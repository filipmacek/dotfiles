#!/bin/bash
drmi() {
docker images | grep $1 | awk '{ print $3;}' | xargs docker rmi -f
}
