# Etapa 1: Construcción
FROM openjdk:11-jdk AS builder

# Instalar git 
RUN apt-get update && apt-get install -y git && rm -rf /var/lib/apt/lists/*

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Clonar el repositorio
RUN git clone https://github.com/Unshd0012/docker.git .

# Compilar el código Java
RUN javac Main.java

# Etapa 2: Imagen de ejecución
FROM openjdk:11-jre-slim

# Directorio de trabajo dentro del contenedor
WORKDIR /app

# Copiar el archivo compilado desde la etapa builder
COPY --from=builder /app/Main.class .

#Ejecutar la aplicación
CMD ["java", "Main"]
