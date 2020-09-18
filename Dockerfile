FROM node:10
LABEL maintainer="zml <nodejs@beibei.com>"

RUN npm config set strict-ssl false

RUN npm config set registry https://registry.npm.taobao.org --global && \
    npm config set disturl https://npm.taobao.org/dist --global
 
RUN npm install -g pm2

# Create app directory
WORKDIR /usr/src/app
COPY package*.json ./
COPY . .
# cmd可以传入参
ENTRYPOINT pm2-runtime start index.js --watch
