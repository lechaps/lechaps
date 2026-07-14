#!/usr/bin/env bash

set -Eeuo pipefail
IFS=$'\n\t'

# ---------------------------------------------------------------------------
# Configuration
# ---------------------------------------------------------------------------

PYTHON_VERSION="${PYTHON_VERSION:-3.13}"
VENV_DIR="${VENV_DIR:-pythonenv}"
HOST="${HOST:-127.0.0.1}"
PORT="${PORT:-8000}"

# Le script peut être lancé depuis n'importe quel répertoire.
SCRIPT_DIR="$(
    cd -- "$(dirname -- "${BASH_SOURCE[0]}")" >/dev/null 2>&1
    pwd
)"

cd "$SCRIPT_DIR"

# ---------------------------------------------------------------------------
# Fonctions utilitaires
# ---------------------------------------------------------------------------

info() {
    printf '\n\033[1;34m%s\033[0m\n' "$*"
}

success() {
    printf '\033[1;32m%s\033[0m\n' "$*"
}

warning() {
    printf '\033[1;33m%s\033[0m\n' "$*" >&2
}

error() {
    printf '\033[1;31mErreur : %s\033[0m\n' "$*" >&2
}

on_error() {
    local exit_code=$?
    local line_number=${1:-inconnue}

    error "échec à la ligne ${line_number} avec le code ${exit_code}."
    exit "$exit_code"
}

trap 'on_error "$LINENO"' ERR

brew_formula_installed() {
    brew list --versions "$1" >/dev/null 2>&1
}

install_brew_formula() {
    local formula=$1

    if brew_formula_installed "$formula"; then
        printf '  ✓ %s est déjà installé\n' "$formula"
    else
        printf '  → Installation de %s...\n' "$formula"
        brew install "$formula"
    fi
}

# ---------------------------------------------------------------------------
# Initialisation
# ---------------------------------------------------------------------------

info "=== Initialisation de l'environnement MkDocs ==="

if [[ "$(uname -s)" != "Darwin" ]]; then
    warning "Ce script est conçu principalement pour macOS."
fi

# Détection de Homebrew sur Apple Silicon et Mac Intel.
if ! command -v brew >/dev/null 2>&1; then
    if [[ -x "/opt/homebrew/bin/brew" ]]; then
        eval "$(/opt/homebrew/bin/brew shellenv)"
    elif [[ -x "/usr/local/bin/brew" ]]; then
        eval "$(/usr/local/bin/brew shellenv)"
    fi
fi

if ! command -v brew >/dev/null 2>&1; then
    error "Homebrew n'est pas installé ou n'est pas accessible dans le PATH."
    echo "Installez Homebrew depuis https://brew.sh puis relancez ce script."
    exit 1
fi

echo "Homebrew utilisé : $(command -v brew)"
echo "Projet MkDocs     : $SCRIPT_DIR"

if [[ ! -f "mkdocs.yml" ]] && [[ ! -f "mkdocs.yaml" ]]; then
    error "aucun fichier mkdocs.yml ou mkdocs.yaml trouvé dans :"
    echo "$SCRIPT_DIR"
    exit 1
fi

# ---------------------------------------------------------------------------
# Python et bibliothèques natives
# ---------------------------------------------------------------------------

info "Vérification de Python ${PYTHON_VERSION}..."

install_brew_formula "python@${PYTHON_VERSION}"

PYTHON_PREFIX="$(brew --prefix "python@${PYTHON_VERSION}")"
PYTHON_BIN="${PYTHON_PREFIX}/bin/python${PYTHON_VERSION}"

if [[ ! -x "$PYTHON_BIN" ]]; then
    error "Python ${PYTHON_VERSION} est introuvable à l'emplacement suivant :"
    echo "$PYTHON_BIN"
    exit 1
fi

echo "Python utilisé : $("$PYTHON_BIN" --version)"
echo "SSL utilisé    : $("$PYTHON_BIN" -c 'import ssl; print(ssl.OPENSSL_VERSION)')"

info "Vérification des dépendances graphiques macOS..."

# Requises par CairoSVG et l'option mkdocs-material[imaging].
BREW_DEPENDENCIES=(
    cairo
    libffi
)

for formula in "${BREW_DEPENDENCIES[@]}"; do
    install_brew_formula "$formula"
done

# ---------------------------------------------------------------------------
# Environnement virtuel
# ---------------------------------------------------------------------------

info "Vérification de l'environnement virtuel..."

RECREATE_VENV=false

if [[ ! -x "$VENV_DIR/bin/python" ]]; then
    echo "L'environnement virtuel n'existe pas."
    RECREATE_VENV=true
else
    VENV_PYTHON_VERSION="$(
        "$VENV_DIR/bin/python" -c \
            'import sys; print(f"{sys.version_info.major}.{sys.version_info.minor}")' \
            2>/dev/null || true
    )"

    VENV_SSL="$(
        "$VENV_DIR/bin/python" -c \
            'import ssl; print(ssl.OPENSSL_VERSION)' \
            2>/dev/null || true
    )"

    if [[ "$VENV_PYTHON_VERSION" != "$PYTHON_VERSION" ]]; then
        warning "L'environnement utilise Python ${VENV_PYTHON_VERSION:-inconnu} au lieu de ${PYTHON_VERSION}."
        RECREATE_VENV=true
    fi

    if [[ "$VENV_SSL" != OpenSSL* ]]; then
        warning "L'environnement utilise une bibliothèque SSL inattendue : ${VENV_SSL:-inconnue}."
        RECREATE_VENV=true
    fi
fi

if [[ "$RECREATE_VENV" == true ]]; then
    info "Création d'un nouvel environnement virtuel..."

    rm -rf -- "$VENV_DIR"
    "$PYTHON_BIN" -m venv "$VENV_DIR"
else
    success "L'environnement virtuel existant est compatible."
fi

# shellcheck source=/dev/null
source "$VENV_DIR/bin/activate"

echo "Environnement actif : $(python --version)"
echo "Interpréteur actif   : $(command -v python)"
echo "SSL actif            : $(python -c 'import ssl; print(ssl.OPENSSL_VERSION)')"

# ---------------------------------------------------------------------------
# Installation Python
# ---------------------------------------------------------------------------

export PIP_DISABLE_PIP_VERSION_CHECK=1
export PYTHONUNBUFFERED=1

info "Mise à jour des outils Python..."

python -m pip install --upgrade \
    pip \
    setuptools \
    wheel

info "Installation et mise à jour des dépendances MkDocs..."

MKDOCS_DEPENDENCIES=(
    "mkdocs<2"
    "mkdocs-material[imaging]"
    "mkdocs-minify-plugin"
    "mkdocs-glightbox"
    "mkdocs-awesome-pages-plugin"
    "mkdocs-rss-plugin"
    "mkdocs-network-graph-plugin"
    "mkdocs-backlinks-section-plugin"
)

python -m pip install --upgrade "${MKDOCS_DEPENDENCIES[@]}"

# Vérifie les incompatibilités entre les dépendances installées.
info "Vérification des dépendances Python..."

python -m pip check

# Vérifie que CairoSVG peut réellement produire une image.
info "Vérification du moteur CairoSVG..."

python - <<'PY'
import cairosvg

svg = b"""
<svg xmlns="http://www.w3.org/2000/svg" width="10" height="10">
    <rect width="10" height="10" />
</svg>
"""

png = cairosvg.svg2png(bytestring=svg)

if not png.startswith(b"\x89PNG"):
    raise RuntimeError("CairoSVG n'a pas produit une image PNG valide.")

print("CairoSVG est opérationnel.")
PY

# ---------------------------------------------------------------------------
# Résumé
# ---------------------------------------------------------------------------

info "Versions installées"

printf '  %-10s: %s\n' "Python" "$(python --version 2>&1)"
printf '  %-10s: %s\n' "MkDocs" "$(python -m mkdocs --version)"
printf '  %-10s: %s\n' "Material" "$(
    python -c \
        'from importlib.metadata import version; print(version("mkdocs-material"))'
)"
printf '  %-10s: %s\n' "SSL" "$(
    python -c 'import ssl; print(ssl.OPENSSL_VERSION)'
)"

# Masque uniquement l'avertissement informatif de Material sur MkDocs 2.0.
# MkDocs reste explicitement limité à une version inférieure à 2.
export NO_MKDOCS_2_WARNING=1

info "Démarrage du serveur MkDocs"

echo "Adresse : http://${HOST}:${PORT}/"
echo "Utilisez Ctrl+C pour arrêter le serveur."
echo

exec python -m mkdocs serve \
    --dev-addr "${HOST}:${PORT}"