FROM adoptopenjdk/openjdk11:jre-11.0.13_8-alpine as builder
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /app.jar

FROM adoptopenjdk/openjdk11:jre-11.0.13_8-alpine
EXPOSE 8083
COPY --from=builder /app.jar /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
