FROM openjdk:17
VOLUME /tmp
ARG JAR_FILE=target/crud-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} /tmp
EXPOSE 8081
WORKDIR /tmp
ENTRYPOINT ["java","-jar","crud-0.0.1-SNAPSHOT.jar"]