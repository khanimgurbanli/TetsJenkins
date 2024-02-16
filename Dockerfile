FROM adoptopenjdk/openjdk:alpine-jre


ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar

COPY ${JAR_FILE} /app.jar

ENTRYPOINT ["java","-jar","/app.jar"]



