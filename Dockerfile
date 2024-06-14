# Specify a base image
FROM node:alpine

# Set working directory
WORKDIR /usr/app

# Copy package.json and package-lock.json if available
COPY package.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code
COPY . .

# Default command
CMD ["npm", "start"]
