#!/usr/bin/env bash

set -Eeuo pipefail

VENV_DIR="pythonenv"
PYTHON_VERSION="3.13"

echo "=== Initialisation de l'environnement MkDocs ==="

# Vérifier que Homebrew est installé
if ! command -v brew >/dev/null 2>&1; then
    echo "Erreur : Homebrew n'est pas installé."
    echo "Installez Homebrew depuis https://brew.sh puis relancez ce script."
    exit 1
fi

# Vérifier que Python 3.13 est installé avec Homebrew
if ! brew list "python@${PYTHON_VERSION}" >/dev/null 2>&1; then
    echo "Python ${PYTHON_VERSION} n'est pas installé."
    echo "Installation avec Homebrew..."

    brew install "python@${PYTHON_VERSION}"
fi

PYTHON_BIN="$(brew --prefix "python@${PYTHON_VERSION}")/bin/python${PYTHON_VERSION}"

if [[ ! -x "$PYTHON_BIN" ]]; then
    echo "Erreur : Python est introuvable à l'emplacement suivant :"
    echo "$PYTHON_BIN"
    exit 1
fi

echo "Python utilisé : $("$PYTHON_BIN" --version)"
echo "SSL utilisé : $("$PYTHON_BIN" -c 'import ssl; print(ssl.OPENSSL_VERSION)')"

# Vérifier si l'environnement virtuel existant est compatible
RECREATE_VENV=false

if [[ ! -x "$VENV_DIR/bin/python" ]]; then
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

    if [[ "$VENV_PYTHON_VERSION" != "$PYTHON_VERSION" ]] ||
       [[ "$VENV_SSL" != OpenSSL* ]]; then
        echo "L'environnement virtuel existant est obsolète :"
        echo "  Python : ${VENV_PYTHON_VERSION:-inconnu}"
        echo "  SSL    : ${VENV_SSL:-inconnu}"
        RECREATE_VENV=true
    fi
fi

# Recréer l'environnement virtuel si nécessaire
if [[ "$RECREATE_VENV" == true ]]; then
    echo "Création d'un nouvel environnement virtuel..."

    rm -rf "$VENV_DIR"
    "$PYTHON_BIN" -m venv "$VENV_DIR"
fi

# Activer l'environnement virtuel
# shellcheck disable=SC1091
source "$VENV_DIR/bin/activate"

echo "Environnement actif : $(python --version)"
echo "SSL actif : $(python -c 'import ssl; print(ssl.OPENSSL_VERSION)')"

# Éviter le message de vérification de version de pip
export PIP_DISABLE_PIP_VERSION_CHECK=1

echo "Mise à jour des outils Python..."

python -m pip install --upgrade \
    pip \
    setuptools \
    wheel

echo "Installation et mise à jour des dépendances MkDocs..."

python -m pip install --upgrade \
    "mkdocs<2" \
    "mkdocs-material[imaging]" \
    mkdocs-minify-plugin \
    mkdocs-glightbox \
    mkdocs-awesome-pages-plugin \
    mkdocs-rss-plugin \
    mkdocs-network-graph-plugin \
    mkdocs-backlinks-section-plugin

echo
echo "Versions installées :"
echo "  Python   : $(python --version 2>&1)"
echo "  MkDocs   : $(mkdocs --version)"
echo "  SSL      : $(python -c 'import ssl; print(ssl.OPENSSL_VERSION)')"
echo
echo "Démarrage de MkDocs sur http://127.0.0.1:8000/"
echo "Utilisez Ctrl+C pour arrêter le serveur."
echo

exec mkdocs serve
