# Use an official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container
WORKDIR /var/www/social-network

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install app dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 80 to the outside world
EXPOSE 8080

# Define the command to run your application
CMD ["npm", "start"]
