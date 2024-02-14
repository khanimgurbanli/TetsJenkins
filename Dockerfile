FROM openjdk:21-jre-slim as builder
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar

FROM openjdk:21-jre-slim
EXPOSE 8083
COPY --from=builder /app.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]

