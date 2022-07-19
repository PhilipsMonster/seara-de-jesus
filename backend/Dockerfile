FROM openjdk:11
VOLUME /tmp
EXPOSE 8080
ADD ./target/seara-0.0.1-SNAPSHOT.jar seara.jar
ENTRYPOINT [ "java", "-jar", "/seara.jar" ]