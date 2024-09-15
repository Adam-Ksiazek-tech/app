#!/bin/sh
# Tworzenie katalogu .ssh, jeśli nie istnieje
mkdir -p /home/node/.ssh

# Dodanie klucza hosta GitHub do known_hosts
ssh-keyscan github.com >> /home/node/.ssh/known_hosts

# Ustawienie odpowiednich uprawnień dla katalogu .ssh
chown -R node:node /home/node/.ssh

# Ustaw katalog roboczy dla Gita jako bezpieczny
git config --global --add safe.directory /app

# Dodaj konfigurację użytkownika i e-maila
git config --global user.name "AdasInDocker"
git config --global user.email "adam.ksiazek.2024@gmail.com"

# Uruchomienie aplikacji
exec npm start
