# Liberty on Java8

FROM vertigo/docker-base

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

RUN wget http://registry.vtg/files/ibm/wlp-webProfile7-java8-linux-x86_64-8.5.5.6.zip -q -O /opt/wlp-web.zip && \
    unzip /opt/wlp-web.zip -d /opt/

EXPOSE 9080
