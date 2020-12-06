FROM node:10 AS server-build
WORKDIR /root/
COPY package*.json ./api/
RUN  npm install
COPY server.js ./api/

CMD ["node", "./api/server.js"]