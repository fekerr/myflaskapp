#!/bin/bash
# fekerr 20181118 Sun 
# Implement Brad Traversy myflaskapp using Docker

export MYFLASKAPPVER=1.2
docker build -t fekerr/myflaskapp:${MYFLASKAPPVER} ..

