#!/bin/sh
# Tworzenie katalogu .ssh, jeśli nie istnieje
mkdir -p /home/node/.ssh

# Dodanie klucza hosta GitHub do known_hosts
ssh-keyscan github.com >> /home/node/.ssh/known_hosts

# Ustawienie odpowiednich uprawnień dla katalogu .ssh
chown -R node:node /home/node/.ssh

# Uruchomienie aplikacji
exec npm start
