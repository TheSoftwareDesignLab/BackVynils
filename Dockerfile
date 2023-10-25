FROM node:12-alpine

WORKDIR /usr/src/app

COPY *.json .

COPY src .

RUN npm install --quiet

RUN npm run build

CMD ["npm", "run", "start:prod"]
