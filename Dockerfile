FROM mhart/alpine-node

RUN mkdir -p /app/server
WORKDIR /app
COPY package.json /app/
COPY nodemon.json /app/
COPY babel.config.js /app/

RUN npm install --production

COPY server/ /app/server/

CMD ['npm', 'start']