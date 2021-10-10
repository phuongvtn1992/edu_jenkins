#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="jenkins_maven"

echo "** Logging in ***"
docker login -u phuongvo1992 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG phuongvo1992/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push phuongvo1992/$IMAGE:$BUILD_TAG
