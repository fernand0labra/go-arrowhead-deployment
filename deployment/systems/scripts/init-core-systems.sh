#!/bin/bash

# Core Systems Deployment
cd ~/eclipse-arrowhead/ServiceRegistry
./ah-serviceregistry > ~/ah-output/service-registry-output.txt &

sleep 2

cd ~/eclipse-arrowhead/Orchestrator
./ah-orchestrator > ~/ah-output/orchestrator-output.txt &

sleep 2

cd ~/eclipse-arrowhead/Authorization
./ah-authorization > ~/ah-output/authorization-output.txt &

sleep 2

exit 0
