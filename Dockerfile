# Utilise une image légère et performante pour Java 17
FROM amazoncorretto:17-alpine

# Définit le dossier de travail dans le conteneur
WORKDIR /app

# Copie le JAR généré par Maven dans le conteneur
COPY target/paymybuddy.jar app.jar

# Expose le port par défaut de l'application Spring Boot
EXPOSE 8080

# Lance l'application
ENTRYPOINT ["java", "-jar", "app.jar"]

