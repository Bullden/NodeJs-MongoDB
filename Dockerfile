FROM node:8

# Create app directory
WORKDIR /nodeapp

# Bundle app source
COPY . .

RUN npm install

RUN npm run build

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
#COPY package*.json ./


# If you are building your code for production
# RUN npm ci --only=production



EXPOSE 3000

CMD [ "npm", "start" ]