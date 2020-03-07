FROM node:slim

WORKDIR $WORK_DIR

COPY package*.json ./

RUN npm install

COPY . .

EXPOSE $PORT

CMD [ "node", "server.js" ]

