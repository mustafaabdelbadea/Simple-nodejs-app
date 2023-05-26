FROM node:16-buster-slim

COPY . .
RUN npm install

EXPOSE 80
CMD ["node", "app.js"]