#frontend
FROM node:slim AS builder

WORKDIR /public

COPY . /public

RUN npm install

ENV REACT_APP_LOCALHOST_KEY="chat-app-current-user"

RUN npm run build

EXPOSE 3000

ENTRYPOINT [ "npm", "start" ]


#backend
FROM node:slim

WORKDIR /server

COPY . /server

RUN npm install

ENV PORT=5000

ENV MONGO_URL="mongodb://mongo:27017/chat"

EXPOSE 5000

ENTRYPOINT [ "npm", "start" ]


