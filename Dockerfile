FROM node:7.7-alpine

# install deps
ADD package.json /tmp/package.json
RUN cd /tmp && npm install

# Copy deps
RUN mkdir -p /opt/Testhosting_3-app && cp -a /tmp/node_modules /opt/Testhosting_3

# Setup workdir
WORKDIR /opt/Testhosting_3-app
COPY . /opt/Testhosting_3-app

# run
EXPOSE 8000
CMD ["npm", "start"]