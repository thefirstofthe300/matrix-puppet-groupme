FROM node:lts-alpine

# Create app directory
WORKDIR /usr/src/app

RUN apk add --no-cache git

COPY package*.json ./

RUN npm install

# Bundle app source
COPY . .

CMD [ "node", "index.js" ]
