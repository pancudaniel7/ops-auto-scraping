FROM openjdk:11.0.10-jre-buster

ENV KAFKA_VERSION 3.1.0
ENV SCALA_VERSION 2.13

RUN apt update && \
    apt install wget

WORKDIR /tmp

RUN wget -O kafka.tgz https://dlcdn.apache.org/kafka/${KAFKA_VERSION}/kafka_${SCALA_VERSION}-${KAFKA_VERSION}.tgz
RUN tar zxvf kafka.tgz
RUN rm -rf kafka
RUN mv kafka_${SCALA_VERSION}-${KAFKA_VERSION} kafka
RUN ls /tmp

COPY init.sh .
RUN chmod +x init.sh

ENTRYPOINT [ "./init.sh" ]