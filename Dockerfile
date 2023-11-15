FROM node:16
WORKDIR /app
COPY package*.json ./
RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y nodejs \
    npm 
COPY . .
EXPOSE 3000
CMD ('npm':'start')
