FROM ubuntu:focal

RUN apt-get update && \
apt-get -y upgrade && \
apt-get -y install wget gnupg && \
apt-get clean

RUN wget -O - http://procyon.ddns.net:8080/propilkki_pub.gpg.key | apt-key add -
RUN echo "deb http://procyon.ddns.net:8080/repos/apt/ubuntu focal main" | tee -a /etc/apt/sources.list

RUN apt-get update && apt-get install pp2host && apt-get clean

RUN adduser propilkki

COPY entrypoint.sh /

EXPOSE 4500 4501

ENTRYPOINT [ "/entrypoint.sh" ]
