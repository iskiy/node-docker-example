# First stage: install dependencies
FROM node:18-alpine

WORKDIR /app

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

EXPOSE 80

ENTRYPOINT ["npm", "start"]