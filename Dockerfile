# Liberty on Java8

FROM vertigo/docker-base

MAINTAINER Andre Fernandes <andre@vertigo.com.br>

WORKDIR /opt/

RUN wget http://registry.vtg/files/ibm/wlp-beta-webProfile7-java8-linux-x86_64-2015.9.0.0.zip -q -O /opt/wlp-web.zip && \
    unzip wlp-web.zip && \
    rm /opt/wlp-web.zip && \
    echo "PATH=$PATH:/opt/wlp/java/bin" >> /etc/profile && \
    echo "JAVA_HOME=/opt/wlp/java" >> /etc/profile && \
    echo "export PATH JAVA_HOME" >> /etc/profile

# fix bug
RUN mv /opt/wlp/java /opt/wlp/jbug && \
    mv /opt/wlp/jbug/java /opt/wlp/java


ENV PATH $PATH:/opt/wlp/java/bin
ENV JAVA_HOME /opt/wlp/java

ENV SERVER_NAME defaultServer

EXPOSE 9080
EXPOSE 9443

CMD /opt/wlp/bin/server run $SERVER_NAME
