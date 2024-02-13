FROM openjdk:21
COPY target/perspektiv-0.0.1-SNAPSHOT.jar app.jar
EXPOSE 8084
ENTRYPOINT ["java","-jar", "app.jar"]
