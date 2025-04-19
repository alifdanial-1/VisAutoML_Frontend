# Step 1: Build React app
FROM node:18-alpine as build

WORKDIR /app

COPY package*.json ./
RUN npm install

COPY . .
# RUN npm run build

# # Step 2: Serve build folder using Nginx
# FROM nginx:alpine

# # Copy build output to Nginx public directory
# COPY --from=build /app/build /usr/share/nginx/html

# Expose port 80 to the internet
EXPOSE 3000

# Start Nginx server
CMD ["npm", "start", ""]
