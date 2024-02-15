FROM openjdk
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
EXPOSE 82

COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
