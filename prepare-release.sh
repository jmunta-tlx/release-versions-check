#!/bin/bash -x
pwd
echo "new_release_version=$1" > new_release_version.txt
JAR_VERSION=`echo $1 | cut -d'v' -f2`
echo "jar = $JAR_VERSION"
mvn versions:set -DnewVersion=$JAR_VERSION
mvn -B clean package ${MAVEN_OPTS}