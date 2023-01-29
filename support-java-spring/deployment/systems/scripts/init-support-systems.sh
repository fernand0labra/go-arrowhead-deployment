#!/bin/bash

# Provider and Consumer Systems Deployment

if [[ $1 -eq 1 ]]; # Deploy the Provider as well 
then
    cd ~/support-java-spring/temperature-sensor/temperature-sensor-provider/target/
    java -jar temperature-sensor-provider-1.0.0.jar > ~/ah-output/provider-output.txt &

    sleep 2
fi

cd ~/support-java-spring/temperature-sensor/temperature-sensor-consumer/target/
java -jar temperature-sensor-consumer-1.0.0.jar > ~/ah-output/consumer-output.txt &

exit 0
