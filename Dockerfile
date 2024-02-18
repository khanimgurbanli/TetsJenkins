FROM openjdk:11-jre-slim
WORKDIR /app
COPY target/your-spring-project.jar app.jar
CMD ["java", "-jar", "app.jar"]
