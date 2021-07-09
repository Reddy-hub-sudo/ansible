FROM maven:3.8.1-openjdk-8 AS mvn
RUN git clone https://github.com/spring-projects/spring-petclinic.git && cd spring-petclinic && mvn package


FROM openjdk:11.0.11-jdk-oracle
COPY --from=mvn /spring-petclinic/target/spring-petclinic-2.4.5.jar /spring-petclinic-2.4.5.jar
EXPOSE 8080
CMD [ "java", "-jar", "target/*.jar"]

