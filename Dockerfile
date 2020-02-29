FROM adoptopenjdk/openjdk11:latest

# Add Author info
LABEL maintainer="yuni@gmail.com"

# Add a volume to /tmp
VOLUME /tmp

# Make port 8080 available to the world outside this container
EXPOSE 80

# The application's jar file
ARG JAR_FILE=build/libs/MySpringApp-0.0.1-SNAPSHOT.jar

# Add the application's jar to the container
ADD ${JAR_FILE} springboot.jar

# Run the jar file
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/springboot.jar"]

