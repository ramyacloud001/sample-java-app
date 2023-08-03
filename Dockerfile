FROM openjdk:11
COPY *.jar *.jar
EXPOSE 80
ENTRYPOINT ["java", "-jar", "*.jar"]
