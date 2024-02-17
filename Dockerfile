FROM openjdk:17
LABEL name=docker-java-app
VOLUME /tmp
ARG JAR_FILE=target/crud-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /tmp
EXPOSE 8081
WORKDIR /tmp
ENTRYPOINT ["java","-jar","crud-0.0.1-SNAPSHOT.jar"]