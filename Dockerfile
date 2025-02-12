#  Compilación 
FROM openjdk:11-jdk AS build
WORKDIR /app
# Se copian todos los archivos del directorio actual al contenedor
COPY . .
# Se compila el archivo Main.java
RUN javac Main.java

#  JRE 11
FROM openjdk:11-jre-slim
WORKDIR /app
# Se copia el archivo compilado desde la etapa de compilación
COPY --from=build /app/Main.class .
#  ejecutar la aplicación
CMD ["java", "Main"]
