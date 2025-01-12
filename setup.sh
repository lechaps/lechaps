#!/bin/bash

# Créer un environnement virtuel Python
python3 -m venv pythonenv 

# Activer l'environnement virtuel
source pythonenv/bin/activate   

# Installer les dépendances mkdocs et plugins
pip install mkdocs mkdocs-material "mkdocs-material[imaging]" mkdocs-minify-plugin mkdocs-glightbox

# Lancer MkDocs serve
mkdocs serve
