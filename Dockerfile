
# Use the lightweight Node.js image
FROM node:alpine

# Set the working directory inside the container
WORKDIR /app

# Copy only the dependency files first
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the rest of the application files
COPY . .

# Expose the port the app runs on
EXPOSE 8081

# Start the application
CMD ["npm", "start"]
