# Use the Node.js LTS version as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local repository contents to the container
COPY . .

# Install dependencies with force option to handle potential conflicts
RUN npm install --force

# Expose the required port
EXPOSE 9050

# Set environment variables
ENV sdkEnv=local
ENV envSdkUrl=https://kemetx-sdk.web.app
ENV envBackendUrl=https://piglet-engaging-mako.ngrok-free.app
ENV envLoggingUrl=http://localhost:8207

# Command to run the build and start the application
CMD ["bash", "-c", "npm run re:build && npm run build:dev && npm start"]
