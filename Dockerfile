FROM node:12.22.12-alpine

WORKDIR /usr/src/app
ENV DB_HOST='db'

COPY . .

RUN npm install --quiet


CMD ["npm", "run", "start"]
