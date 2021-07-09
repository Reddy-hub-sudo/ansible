FROM ubuntu:18.04
LABEL environment="developer"
LABEL project="payrole"
RUN apt update && apt install openjdk-8-jdk -y && apt install curl -y
ENV workdir='/my_home'
RUN mkdir ${workdir}
WORKDIR ${workdir}
ENV downloadpath='springpetclinic.jar'
ENV downloadlocation='https://referenceappkhaja.s3-us-west-2.amazonaws.com/spring-petclinic-2.2.0.BUILD-SNAPSHOT.jar'
ADD ${downloadlocation} "${workdir}/${downloadpath}"
CMD ["java", "-jar", "${workdir}/${downloadpath}"]
VOLUME ["/my_volume"]
HEALTHCHECK CMD curl -f http://localhost/ || exit 1
EXPOSE 8080