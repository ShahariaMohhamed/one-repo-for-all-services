FROM debian:bullseye

RUN apt-get update
RUN apt-get -y install tzdata
RUN apt-get -y install apache2
RUN echo "Dockerfile Test on Apache2" > /var/www/html/index.html

RUN echo "3"
EXPOSE 80

ENTRYPOINT ["/usr/sbin/apachectl"]
CMD ["-D", "FOREGROUND"]
