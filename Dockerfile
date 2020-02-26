FROM node:10-stretch-slim

LABEL version="6.0.2"
LABEL description="Docker file for SCC Broker Server"

RUN mkdir -p /usr/src/
WORKDIR /usr/src/
COPY . /usr/src/

RUN rm -rf node_modules || true
RUN npm install --frozen-lockfile --non-interactive

EXPOSE 8888

USER node
CMD ["npm", "start"]
