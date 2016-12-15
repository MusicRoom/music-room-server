FROM node:latest

RUN mkdir -p /MusicRoom
WORKDIR /MusicRoom
ADD package.json /MusicRoom/package.json
RUN npm install
RUN npm install nodemon -g
ADD . /MusicRoom

