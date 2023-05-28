FROM node:14-alpine

WORKDIR /node_app

COPY nodeapp /node_app

RUN npm install

EXPOSE 3000

CMD ["node", "/node_app/app.js"]
