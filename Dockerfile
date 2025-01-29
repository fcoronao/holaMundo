FROM openjdk:17-jdk-alpine
EXPOSE 8080

# Crear un directorio de trabajo para el JAR
WORKDIR /app

# Copiar el JAR generado a la carpeta de trabajo
COPY ./target/demo-0.0.1-SNAPSHOT.jar /app/demo-0.0.1-SNAPSHOT.jar

# Configurar el ENTRYPOINT con los parámetros directamente
ENTRYPOINT ["java", "-XX:+UseSerialGC", "-Xss512k", "-Xms128m", "-Xmx256m", "-jar", "/app/demo-0.0.1-SNAPSHOT.jar"]

