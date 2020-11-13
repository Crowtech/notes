#!/bin/bash

version=1.0.1  #$(grep 'git.build.version')
pwd=${PWD##*/}
function prop() {
  grep "${1}=" ${file} | cut -d'=' -f2
}


echo "Building docker ${USER}/${pwd}:${version}"
./mvnw clean package -Dquarkus.container-image.build=true -DskipTests=true
docker tag ${USER}/${pwd}:${version}  crowtech/${pwd}:latest 
docker tag ${USER}/${pwd}:${version}  crowtech/${pwd}:${version} 
