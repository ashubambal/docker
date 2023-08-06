# Getting base image from Docker Hub
FROM python:3.9

# Creating working directory inside the container
WORKDIR app/

# Copy the sorce code from system to conatiner
COPY . . 

# Installing necessary libraries to run the flask application
RUN pip install flask

# Run the application
CMD ["python","flaskapp.py"]
