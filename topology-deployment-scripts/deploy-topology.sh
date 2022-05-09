#!/bin/bash
echo "Waiting for storm nimbus..."
/topology-deployment-scripts/wait-for.sh nimbus:6627 -- echo "Nimbus is up"

/apache-storm-2.2.0/bin/storm jar /topology/storm-word-count.jar io.koszolko.storm.example.WordCountTopology word-count-topology
                                           WordCount-1.0-SNAPSHOT.jar

/apache-storm-2.2.0/bin/storm jar /topology/WordCount-1.0-SNAPSHOT.jar io.koszolko.storm.example.WordCountTopology word-count-topology