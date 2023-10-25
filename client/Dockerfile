FROM node:18.18.2-alpine

WORKDIR /app

COPY package.json yarn.lock ./

RUN yarn install --frozen-lockfile

COPY . /app

CMD [ "yarn", "build" ]
