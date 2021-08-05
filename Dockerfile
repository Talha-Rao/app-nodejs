FROM node:6-alpine

RUN mkdir -p /home/app
COPY . /home/app

CMD ["node", "server.js"]
