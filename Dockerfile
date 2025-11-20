FROM gradle:8.7-jdk21 AS builder
WORKDIR /app

COPY --chown=gradle:gradle . .

RUN gradle build -x test

FROM eclipse-temurin:21-jre
WORKDIR /app

COPY --from=builder /app/build/libs/*.jar app.jar

EXPOSE 8080
ENV PORT=8080


ENTRYPOINT ["sh", "-c", "java -jar /app/app.jar --server.port=$PORT"]
