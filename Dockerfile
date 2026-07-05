FROM node:24-alpine

# Create app directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy all project files
COPY . .

# Expose the application port
EXPOSE 3000

# Start the application
CMD ["node", "server.js"]