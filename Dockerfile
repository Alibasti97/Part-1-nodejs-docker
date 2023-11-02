# Use the official Node.js image as the base image
FROM node:14-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Node.js application files into the container at /app
COPY app.js /app/

# Expose the port the application will run on
EXPOSE 3000

# Start the Node.js application
CMD ["node", "app.js"]
