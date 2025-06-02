FROM node:20.17.0-bookworm-slim

WORKDIR /app

COPY package.json ./

RUN npm install --verbose

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
