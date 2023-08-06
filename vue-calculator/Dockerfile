# Use the official Node.js image as the base image
FROM node:14

# Set the working directory inside the container
WORKDIR /app

# Copy the package.json and package-lock.json files into the container
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application code into the container
COPY . .

# Build the Vue.js application
RUN npm run build

# Expose the application port
EXPOSE 80

# Specify the command to run the application
CMD [ "npm", "run", "serve" ]
