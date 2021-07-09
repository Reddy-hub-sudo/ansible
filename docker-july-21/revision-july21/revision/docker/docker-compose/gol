FROM maven:3.8.1-openjdk-8 AS mvn
RUN gitclone https://github.com/wakaleo/game-of-life.git && cd game-of-life && mvn package


FROM tomcat:9.0.50-jdk11-corretto
COPY --from=mvn /game-of-life/gameoflife-web/target/gameoflife.war /usr/local/tomcat/webapps/gameoflife.war
EXPOSE 8080
