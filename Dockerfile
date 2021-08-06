<<<<<<< HEAD
FROM node:6-alpine

RUN apt-gte update

CMD ["echo" "My build image"]
=======
FROM jenkins/jenkins:lts
 
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=NOPASSWD: ALL" >> /etc/sudoers
 
USER Talha-Rao
COPY plugins.txt /usr/share/jenkins/plugins.txt
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
>>>>>>> 625fccc7536ff78f92f49630e1addf5a2d35d932
