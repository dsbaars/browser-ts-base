FROM node:16-bullseye-slim

WORKDIR /usr/src/app

COPY package*.json yarn.lock 

RUN yarn install

COPY . .

EXPOSE 8080

CMD [ "yarn", "start" ]
