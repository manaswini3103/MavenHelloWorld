FROM eclipse-temurin:17-jre-alpine
WORKDIR /app
COPY webapp/target/*.war app.war
EXPOSE 8080
CMD ["java", "-jar", "app.war"]
