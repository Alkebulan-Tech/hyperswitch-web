# Use the Node.js LTS version as the base image
FROM node:18-alpine

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the local repository contents to the container
COPY . .

# Install dependencies with force option to handle potential conflicts
RUN yarn install

# Expose the required port
EXPOSE 9050

# Set environment variables
ENV sdkEnv=local
ENV envSdkUrl=http://localhost:9050
ENV envBackendUrl=https://piglet-engaging-mako.ngrok-free.app
ENV envLoggingUrl=http://localhost:8207

# Command to run the build and start the application
CMD ["bash", "-c", "yarn re:build && yarn start"]
