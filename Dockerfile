FROM openjdk:21-jre-slim as builder
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar

FROM adoptopenjdk/openjdk16:jre-16.0.2_7-alpine
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
EXPOSE 8083
ENTRYPOINT ["java","-jar","/app.jar"]

