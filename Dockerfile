FROM eclipse-temurin:22-jdk-alpine
WORKDIR /app
COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN chmod +x mvnw && ./mvnw dependency:go-offline
COPY src ./src
RUN ./mvnw -DskipTests clean package
EXPOSE 8080
ENTRYPOINT ["sh", "-c", "java -Dspring.mongodb.uri=$MONGODB_URL -Daws.access.key=$AWS_ACCESS_KEY -Daws.secret.key=$AWS_SECRET_KEY -Daws.region=ap-southeast-2 -Daws.s3.bucketname=foodies-foods3 -Djwt.secret.key=$JWT_SECRET_KEY -jar target/foodiesapi-0.0.1-SNAPSHOT.jar"]