# Set base image using build argument (default to Eclipse Temurin 17 JDK)
ARG BASE_IMAGE=eclipse-temurin:17-jdk
FROM ${BASE_IMAGE}

# Set working directory inside the container
WORKDIR /app

# Copy JAR file from build context to container
COPY target/*.jar app.jar

# Expose the application port
EXPOSE 8080

# Set the entrypoint to run the Spring Boot application
ENTRYPOINT ["java", "-jar", "app.jar"]
