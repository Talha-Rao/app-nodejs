<<<<<<< HEAD
FROM jenkins/jenkins:lts
 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER Talha-Rao
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
=======
FROM node:6-alpine

RUN mkdir -p /home/app
COPY . /home/app

CMD ["node", "/home/app/App.js"]
>>>>>>> a69a58047aa28e0abd3b96ae3500902f2738e66b
