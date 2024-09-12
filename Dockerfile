# Użyj Node.js jako bazowego obrazu
FROM node:22-alpine

# Ustaw katalog roboczy
WORKDIR /app

# Zainstaluj globalnie npx (które jest już częścią npm)
RUN npm install -g create-react-app

# Zainstaluj nano
RUN apk add --no-cache nano

# Skopiuj package.json i zainstaluj zależności
COPY package.json ./

RUN npm install
