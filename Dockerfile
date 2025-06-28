# Use Amazon Corretto 24 as the base image
FROM amazoncorretto:24

# Set the working directory inside the container
WORKDIR /app

# Copy the Spring Boot JAR file into the container
COPY build/libs/taskapp.jar /app/taskapp.jar

# Expose the port your app runs on
EXPOSE 8080

# Run the Spring Boot application
ENTRYPOINT ["java", "-jar", "/app/taskapp.jar"]