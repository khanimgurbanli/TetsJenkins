FROM adoptopenjdk/openjdk11:jre-11.0.13_8-alpine as builder
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar


FROM adoptopenjdk/openjdk16:alpine
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar
EXPOSE 8083
ENTRYPOINT ["java","-jar","/app.jar"]

