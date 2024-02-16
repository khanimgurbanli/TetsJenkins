FROM openjdk:11-jdk-alpine as builder
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
EXPOSE 8085

ENTRYPOINT ["java","-jar","/app.jar"]

