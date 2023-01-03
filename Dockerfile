FROM openjdk:8-jdk-alpine

ADD target/spring-boot-jpa-h2-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 8080

VOLUME /usr/lib/h2

ENV H2_USERNAME "h2db"

ENV H2_PASSWORD "1234"

ENTRYPOINT [ "sh", "-c", "java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar" ]