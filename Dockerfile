FROM ubuntu:20.04
RUN apt-get update
RUN apt-get install curl -y
RUN curl https://nodejs.org/dist/v16.17.1/node-v16.17.1-linux-x64.tar.gz -o node-v16.17.1-linux-x64.tar.gz
RUN tar -xf node-v16.17.1-linux-x64.tar.gz
RUN cd node-v16.17.1-linux-x64/bin && ln -s /node-v16.17.1-linux-x64/bin/*  /usr/local/bin
RUN corepack enable
RUN mkdir -p /app 
COPY . /app
WORKDIR /app
EXPOSE 3000
ENTRYPOINT ["yarn","node","server.js"]
