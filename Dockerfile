# Start with a base image containing Java runtime
FROM openjdk:11

# Maintainer Info
LABEL maintainer="Omkar Shinde <oshinde91199@gmail.com>"

# Make port 8080 available to the world outside this container
EXPOSE 8080

# The application's jar file
ARG JAR_FILE=target/chat-app.jar

# Add the application's jar to the container
ADD ${JAR_FILE} chat-app.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/chat-app.jar"]