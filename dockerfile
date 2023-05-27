FROM node:14-alpine

WORKDIR /node_app

COPY . .

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
