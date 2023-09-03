# Use Maven as the base image
FROM maven:3.8-openjdk-11

# Set the working directory inside the container
WORKDIR /app

# Copy the Maven build files
COPY pom.xml /app/

# Download Maven dependencies to cache them
RUN mvn dependency:resolve

# Copy the source code into the container
COPY src /app/src

# Build the Java application using Maven
RUN mvn package

# Command to run the Java application
CMD ["java", "-jar", "target/splitwise-1.0.jar"]
