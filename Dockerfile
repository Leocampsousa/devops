FROM node:10.23.2-stretch-slim

EXPOSE 3000

COPY . .

RUN npm install && npm install yarn

RUN yarn lint && yarn run build && yarn add lockfile 

CMD ["yarn", "start"]