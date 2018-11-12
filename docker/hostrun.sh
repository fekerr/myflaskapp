#!/bin/bash
# fekerr 20181108 Thu
# This will be the command run on the host to start the travflask docker container
# run with ". hostrun.sh"
TRAVFLASKVER=1.0

docker container run -t --detach --publish 82:80 --name travflask --mount type=bind,source=$(pwd)../bind,target=/app/bind fekerr/travflask:${TRAVFLASKVER} bash

