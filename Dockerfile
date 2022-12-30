FROM node:latest

WORKDIR /usr/src/magento_news_front

COPY package*.json ./

RUN npm install
RUN npm run build
COPY . .

CMD [ "node", ".output/server/index.mjs" ]
