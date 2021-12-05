FROM node:10.23.2-stretch-slim

EXPOSE 3002
RUN npm install && npm install yarn

COPY . .

RUN yarn lint && yarn run build && yarn add lockfile 

CMD ["yarn", "dev"]