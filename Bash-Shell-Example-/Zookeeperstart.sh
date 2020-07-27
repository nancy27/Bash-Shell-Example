#!/usr/bin/env bash
#! /bin/bash

cd /Users/nancy/Projects/Zookeeper/cp-all-in-one/cp-all-in-one
echo " --------------------------------KAFKA-----------------------------------------"
echo "Bring Zookeeper UP :"
echo " -------------------------------------------------------------------------------"
docker-compose up -d
touch "docker.txt"
docker-compose ps > "docker.txt"
echo "HI"
result=$(cat docker.txt | awk '{print $3}'| grep "Up" |wc -l)
#UP_count=$(echo "${result}")
if [ ${result} == 8 ]
then 
  echo "Docker Status is Up "
else
  exit 0  
fi

cd /Users/nancy/Projects/Zookeeper/kafka_2.12-2.5.0

# function topicCreation(){
  read -p "You want to create a new Topic ? YES for new topic
 or NO for existing topic " ANS
 case "$ANS" in
  [yY] | [yY][eE][sS])
  read -p "enter the topic Name " TOPIC
 bin/kafka-topics.sh --create --bootstrap-server 
  localhost:9092 --replication-factor 1 --partitions 1 
  --topic $TOPIC

  echo "New Topic $TOPIC is Created "
  ;;
  [nN] | [nN][oO])
 
  EXIST_TOPICS=$(bin/kafka-topics.sh --list --bootstrap-server localhost:9092 | grep "${TOPIC}")
  
  read -p "Enter Your Existing Topic Name :" EXIST_TOPIC
   FLAG=1
   for EACH in $EXIST_TOPICS
    do 
     if [ "$EACH" == "$EXIST_TOPIC" ]
     then 
    FLAG=0
     break
     fi
    done
    if [ $FLAG == 0 ]
    then 
    echo "Topic EXISTING"
    else
    echo "TOPIC Does NOt EXist ! Create Again "  
    fi  
  ;;
  *)
  echo "Please enter yes or no!"
  ;;
  esac
 

# topicCreation

read -p "Which Terminal you wanna start up : Producer (P)
Consumer (C): " REQ
Terminal -e "bash -c 'cd /etc; ls; $SHELL'"

exec bash




