FROM ubuntu:18.04
RUN apt update
RUN apt install openjdk-8-jdk -y
RUN apt install wget -y
ENV source='https://referenceappkhaja.s3-us-west-2.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar'
ENV destination='springpetclinic'
ADD []
CMD ["java", "-jar", "spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar"]
EXPOSE 8080