FROM eclipse-temurin:11-jdk-jammy

WORKDIR /app

COPY target/app-1.0.jar app.jar

EXPOSE 8080

ENTRYPOINT ["java","-jar","app.jar"]
