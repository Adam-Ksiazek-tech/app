# Aplikacja ToDo via Create React App

## Użycie Dockera

- docker-compose up --build

## GitHub Pages

https://adam-ksiazek-tech.github.io/app/

### Biblioteka wdrożeniowa

- za wdrożenie odpowiada paczka

```
npm install --save gh-pages
```

### package.json

- template

```
"homepage": "https://twoja-nazwa-uzytkownika.github.io/nazwa-repozytorium"
```

```
"homepage": "https://adam-ksiazek-tech.github.io/app/",
```

- skrypty

```
"predeploy": "npm run build",
"deploy": "gh-pages -d build",
```
  