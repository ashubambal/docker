# Use Ubuntu as the base image
FROM ubuntu:20.04

# Update package list and install Python
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Set the working directory inside the container
WORKDIR /app

# Copy the entire current directory into the container's /app directory
COPY . .

# Run the Python script when the container starts
CMD ["python3", "calculator.py"]

