# Getting base image from docker hub
FROM openjdk:11

# Working directory where all code will be kept
WORKDIR app/

# Copy the app to the current directory of container
COPY . .

# Compile code
RUN javac Hello.java

# Run java compiled code
CMD ["java","Hello"]
