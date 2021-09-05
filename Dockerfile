FROM node:latest
MAINTAINER Noam Blumshtain

WORKDIR /var/app
COPY . .
RUN npm inatall

EXPOSE 3000
CMD [ "node", "index.js" ]
