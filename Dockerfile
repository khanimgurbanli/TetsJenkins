FROM openjdk
EXPOSE 8083
ARG JAR_FILE=/target/perspektiv-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar


ENTRYPOINT ["java","-jar", "/app.jar"]