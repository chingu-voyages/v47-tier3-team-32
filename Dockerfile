# Use an official Python runtime as a parent image
FROM python:3.9-slim AS python_stage

# Set Python to run in unbuffered mode
ENV PYTHONUNBUFFERED 1

# Install any needed packages specified in requirements.txt
RUN apt-get update && apt-get install -y \
    git \
    && rm -rf /var/lib/apt/lists/*

# Install psycopg2-binary
RUN pip install --no-cache-dir psycopg2-binary

# Switch to the Node.js image
FROM node:18.17 AS nodejs_stage

# Set the working directory for the Node.js image
WORKDIR /music-app

# Copy only the package.json and package-lock.json first to leverage Docker cache
COPY /web-front-end/music-app .

# Install npm dependencies
RUN npm install

# Copy the entire application code
COPY . .

# Build the application
RUN npm run build

# Expose port 3000
EXPOSE 3000

# Define the command to run the application
CMD ["npm", "run", "dev"]