#!/bin/bash
# fekerr 20181118 Sun

# This is run on the host to start the myflaskapp Docker container.
# run with ". hostrun.sh"

export MYFLASKAPPVER=1.2
export MYFLASKAPPPORT=83

docker container run -t --detach --publish ${MYFLASKAPPPORT}:80 --name myflaskapp_${MYFLASKAPPVER} --mount type=bind,source=$(pwd)/../bind,target=/app/bind fekerr/myflaskapp:${MYFLASKAPPVER} bash

