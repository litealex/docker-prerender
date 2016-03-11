FROM node:latest

MAINTAINER Alexander Zakharov "litealex@gmail.com"

RUN apt-get update -y && apt-get install -y git
    
RUN git clone https://github.com/prerender/prerender.git

WORKDIR /prerender

RUN npm install

EXPOSE 3000

CMD node server.js