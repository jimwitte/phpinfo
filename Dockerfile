# Dockerfile for autobuild example 
FROM ubuntu:14.04
MAINTAINER Jim Witte <jwitte@illinois.edu>

EXPOSE 80 443

# Let the container know that there is no tty
ENV DEBIAN_FRONTEND noninteractive

ADD ./app /var/www/html
ADD ./foreground.sh /etc/apache2/foreground.sh
ADD ./packages.txt .
RUN apt-get update
RUN apt-get install -y $(cat packages.txt)
RUN rm /var/www/html/index.html && \
    chown -R www-data:www-data /var/www/html && \
    chmod +x /etc/apache2/foreground.sh

CMD ["/etc/apache2/foreground.sh"]


