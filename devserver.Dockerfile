FROM node:14.15.5
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
RUN yarn install
