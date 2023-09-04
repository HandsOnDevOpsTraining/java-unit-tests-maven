# Use Maven as the base image
FROM maven:3.8-openjdk-11

# Set the working directory inside the container
WORKDIR /app

COPY ./target/splitwise-1.0.jar /app/

# Command to run the Java application
CMD ["java", "-jar", "target/splitwise-1.0.jar"]
