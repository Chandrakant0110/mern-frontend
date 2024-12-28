# Write the dockerfile code to seamlessly run the app.
FROM node:20.11.0-alpine3.19

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .

# EXPOSE 5000

CMD ["node", "server.js"]
