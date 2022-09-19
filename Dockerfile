FROM node:16.17.0-slim

# Create app directory
WORKDIR /bookforme_app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json /bookforme_app

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
COPY . /bookforme_app

EXPOSE 4000
CMD [ "npm","run","start" ]