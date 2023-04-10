# First stage: install dependencies
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

EXPOSE 3000

ENTRYPOINT ["npm", "start"]