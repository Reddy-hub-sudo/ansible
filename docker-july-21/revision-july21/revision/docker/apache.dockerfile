FROM openjdk:8
RUN apt update && apt install apache2 -y && apt install curl -y
EXPOSE 80
HEALTHCHECK --interval=1m --timeout=2s --retries=3 CMD curl -f http://localhost/ || exit 1
VOLUME [ "/my_data" ]
CMD ["apache2ctl", "-D", "FOREGROUND"]