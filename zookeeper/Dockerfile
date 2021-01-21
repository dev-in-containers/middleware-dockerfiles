FROM adoptopenjdk:11-jdk-openj9

WORKDIR /root
RUN apt-get update -y && \
  apt-get install curl -y && \
  curl -O https://archive.apache.org/dist/zookeeper/zookeeper-3.6.1/apache-zookeeper-3.6.1-bin.tar.gz && \
  tar zxf apache-zookeeper-3.6.1-bin.tar.gz
COPY zoo.cfg /root/apache-zookeeper-3.6.1-bin/conf/
COPY start.sh /root/

CMD ["/root/start.sh"]



