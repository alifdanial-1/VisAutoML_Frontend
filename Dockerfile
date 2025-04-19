# Use Node.js to build and serve the React app
FROM node:18-alpine

WORKDIR /app

# Install dependencies and build the app
COPY package*.json ./
RUN npm install

COPY . .
RUN npm run build

# Install a lightweight static file server
RUN npm install -g serve

# Expose the port serve will use
EXPOSE 3000

# Start the static server
CMD ["serve", "-s", "build", "-l", "3000"]
