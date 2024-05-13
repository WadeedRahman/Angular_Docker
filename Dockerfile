# Use the official Node.js image as base
FROM node:18

# Set the working directory inside the container
WORKDIR /app

# Copy package.json and package-lock.json to the working directory
COPY package*.json ./

# Install Angular CLI globally
RUN npm install -g @angular/cli

# Install dependencies
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Expose port 4200
EXPOSE 4200

# Start the Angular development server
CMD ["ng", "serve", "--host", "0.0.0.0", "--port", "4200"]

