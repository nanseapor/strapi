FROM node:20

# Create app directory
WORKDIR /usr/src/app

# Install app dependencies
COPY package*.json ./
RUN npm install

# Copy app source code
COPY . .

# Build the app
RUN npm run build

# Expose the port Strapi will run on
EXPOSE 1337

# Start the app
CMD ["npm", "run", "start"]
