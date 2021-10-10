#!/bin/bash

echo jenkins_maven > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

#scp  /tmp/.auth root@192.168.1.8:/tmp/.auth
scp  /tmp/.auth root@192.168.1.8:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish root@192.168.1.8:/tmp/publish
ssh root@192.168.1.8 "/tmp/publish"
