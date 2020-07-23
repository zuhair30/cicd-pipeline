FROM openjdk:8-jdk-alpine

VOLUME /tmp

EXPOSE 8888

ARG JAR_FILE=/target/*.jar

COPY ${JAR_FILE} devops-test-app-0.0.1-SNAPSHOT.jar

RUN echo "Creation of your docker image is in progress, please hold on for a moment"

ENTRYPOINT ["java", "-jar", "devops-test-app-0.0.1-SNAPSHOT.jar"]

MAINTAINER "zuhair30@gmail.com"