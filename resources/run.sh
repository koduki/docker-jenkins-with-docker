#!/bin/bash

/usr/local/bin/wrapdocker &
java -DJENKINS_HOME=/var/lib/jenkins -jar /usr/share/jenkins/jenkins.war --webroot=/var/cache/jenkins/war --httpPort=8000
