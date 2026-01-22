FROM openjdk:17-jdk-alpine
WORKDIR /app
COPY target/*.war app.war
EXPOSE 8080
CMD ["java", "-jar", "app.war"]
