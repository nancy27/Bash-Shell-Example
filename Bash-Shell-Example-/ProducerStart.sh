#!/bin/bash

cd /Users/nancy/Projects/kafka_2.12-2.5.0
bin/kafka-console-producer.sh --bootstrap-server localhost:9092 --topic $1