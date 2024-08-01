FROM openjdk:17-jdk-slim
RUN apt update
RUN apt-get clean
WORKDIR /app
COPY target/*.war /app/app.war
EXPOSE 8079
CMD ["java", "-jar", "target/app/app.war"]
