FROM node:20
LABEL authors="diamond"

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 80

CMD ["node", "/app/server.cjs"]
