FROM adoptopenjdk/openjdk16
EXPOSE 8080
ARG JAR_FILE=target/perspektiv-0.0.1-SNAPSHOT.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar"]