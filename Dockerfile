FROM openjdk
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
EXPOSE 8083
COPY ${JAR_FILE} /app.jar
ENTRYPOINT ["java","-jar","/app.jar"]
