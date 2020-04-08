FROM node:10
LABEL maintainer="zml <nodejs@beibei.com>"


# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
