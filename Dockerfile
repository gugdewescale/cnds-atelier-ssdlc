FROM maven:3.8.5-openjdk-17 AS build
COPY src /usr/src/app/src
COPY pom.xml /usr/src/app
RUN mvn -f /usr/src/app/pom.xml clean package

FROM gcr.io/distroless/java
COPY --from=build /usr/src/app/target/demo-0.0.1-SNAPSHOT.jar /usr/app/helloworld-1.0.0-SNAPSHOT.jar  
EXPOSE 8080
ENTRYPOINT ["java","-jar","/usr/app/helloworld-1.0.0-SNAPSHOT.jar"]