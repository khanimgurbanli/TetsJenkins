FROM adoptopenjdk/openjdk16:jdk-16.0.2_7
EXPOSE 8084
ARG JAR_FILE=target/*.jar
ADD ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar", "/app.jar"]