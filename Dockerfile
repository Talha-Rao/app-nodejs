
FROM node:6-alpine

RUN apt-gte update

CMD ["echo" "My build image"]
