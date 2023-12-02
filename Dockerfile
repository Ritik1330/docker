# FROM ubuntu

# RUN apt-apt update

# RUN apt-get install -y  curl 
# RUN curl -sl https://github.com/nodejs/node.git | bash -
# RUN apt-apt update
# RUN apt-apt upgrade -y
# RUN apt-apt install -y nodejs


# COPY package.json  package.json
# COPY package-lock.json  package-lock.json
# COPY main.js  main.json

# RUN npm install
# ENTRYPOINT {"node","main.js"}


FROM node:18.16.0-alpine3.17
RUN mkdir -p /opt/app
WORKDIR /opt/app
COPY src/package.json src/package-lock.json .
RUN npm install
COPY src/ .
EXPOSE 3000
CMD [ "npm", "start"]