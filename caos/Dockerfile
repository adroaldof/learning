FROM node:22.9.0
WORKDIR /app
RUN apt update && apt install stress --yes
COPY ./simulador-do-caos/package.json ./ 
RUN npm install
COPY ./simulador-do-caos/* ./
RUN npm run compile
HEALTHCHECK --interval=10s --timeout=5s --start-period=5s --retries=3 CMD [ "curl", "-f", "http://localhost:3000/health" ]
EXPOSE 3000
CMD [ "npm", "start" ]