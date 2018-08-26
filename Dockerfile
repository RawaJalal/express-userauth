FROM node:9.5

RUN mkdir -p /userauth
COPY controllers/ /userauth/controllers/
COPY db/ /userauth/db/
COPY routes/ /userauth/routes/
COPY user-server.js /userauth/
COPY test/ /userauth/test/ 
COPY jwtRS256.key package.json package-lock.json sequelize-postgres-docker.yaml /userauth/

WORKDIR /userauth

RUN apt-get update -y  \
    && apt-get -y install curl python build-essential git ca-certificates  \
    && npm install --unsafe-perm 

EXPOSE 3003
CMD npm start

