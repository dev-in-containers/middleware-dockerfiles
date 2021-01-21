FROM adoptopenjdk:11-jdk-openj9

WORKDIR /root
RUN apt-get update -y && \
  apt-get install curl -y && \
  curl -O https://downloads.apache.org/kafka/2.7.0/kafka_2.13-2.7.0.tgz && \
  tar zxf kafka_2.13-2.7.0.tgz

COPY files/server.properties /root/server.properties

CMD ["/root/kafka_2.13-2.7.0/bin/kafka-server-start.sh", "/root/server.properties"]
