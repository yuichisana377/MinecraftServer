FROM eclipse-temurin:21
WORKDIR /app
COPY server.jar .
CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar", "nogui"]
