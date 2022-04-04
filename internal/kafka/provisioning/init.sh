#!/bin/bash

# Topics creation
bootstrap_server=kafka-1:9092,kafka-2:9092,kafka-3:9092
topic_names=("auto-scraping-triggers" "auto-collected-data" "auto-notifications")

for topic_name in "${topic_names[@]}"; do

    /tmp/kafka/bin/kafka-topics.sh \
        --create \
        --bootstrap-server $bootstrap_server \
        --replication-factor 1 \
        --partitions 3 \
        --topic $topic_name &&
        /tmp/kafka/bin/kafka-topics.sh \
            --describe \
            --topic $topic_name \
            --bootstrap-server $bootstrap_server

done
