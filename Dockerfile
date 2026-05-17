FROM eclipse-temurin:22-jdk-alpine
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN chmod +x mvnw
RUN ./mvnw dependency:go-offline
COPY src ./src
RUN ./mvnw -DskipTests clean package
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "target/foodiesapi-0.0.1-SNAPSHOT.jar"]