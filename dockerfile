FROM node:16-buster-slim

WORKDIR node_app

COPY . /node_app

RUN npm install

EXPOSE 3000

CMD ["node", "app.js"]
