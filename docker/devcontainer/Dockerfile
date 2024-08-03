FROM node:22.5.1-alpine3.19
USER node
WORKDIR /app
COPY --chown=node:node package*.json ./
RUN npm install
RUN npm build
COPY --chown=node:node ./dist .
CMD [ "node", "app.js" ]