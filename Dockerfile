FROM node:10

# Create app directory
RUN mkdir -p /app
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json .

# RUN npm install
# If you are building your code for production
RUN npm install --only=production

# Bundle app source
COPY . .

EXPOSE 4000

CMD ["npm", "start"]