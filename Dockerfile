FROM node:10 AS server-build
WORKDIR /root/
COPY package*.json .
RUN  npm install
COPY server.js .

CMD ["node", "./api/server.js"]