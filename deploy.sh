#!/bin/bash
./build-docker.sh ;docker push crowtech/notes:latest;ssh -i ~/.ssh/dmills ubuntu@aible /home/ubuntu/restart-notes.sh
