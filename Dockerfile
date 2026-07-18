FROM eclipse-temurin:21
WORKDIR /app

# server.jar をコピー
COPY server.jar .

# eula.txt を自動生成（無料プランで必須）
RUN echo "eula=true" > eula.txt

# サーバー起動
CMD ["java", "-Xmx1G", "-Xms1G", "-jar", "server.jar", "nogui"]
