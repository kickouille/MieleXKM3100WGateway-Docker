# syntax=docker/dockerfile:1

FROM node:alpine
ENV NODE_ENV=production

EXPOSE 3000/tcp

WORKDIR /app

COPY ["MieleXKM3100WGateway/package.json", "MieleXKM3100WGateway/package-lock.json*", "./"]

RUN npm install --production

COPY MieleXKM3100WGateway/mieleGateway.js .

CMD [ "node", "mieleGateway.js" ]
