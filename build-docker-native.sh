#!/bin/bash
#copy the graal certs 
#Contents/Home/lib/security/cacerts
#/Library/Java/JavaVirtualMachines/graalvm-ce-java11-19.3.1/Contents/Home
#mvn package -Pnative -Dquarkus.native.container-build=true  -DskipTests=true

./build-native.sh
#./mvnw package -Pnative -Dquarkus.native.container-build=true -DskipTests=true
docker build -f src/main/docker/Dockerfile.native -t crowtech/notes:latest .
docker tag crowtech/notes:latest crowtech/notes:1.0.1-native

