# Use an official Node.js runtime as a parent image
FROM node:24-alpine

# Set the working directory
WORKDIR /usr/src/app

# Copy package files and install dependencies
COPY package*.json ./
RUN npm install express

# Copy the rest of the application code
COPY . .

# The app binds to port 3000
EXPOSE 3000

# Start the application
CMD ["node", "src/index.js"]