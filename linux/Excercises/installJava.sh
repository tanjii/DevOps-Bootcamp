#!/bin/bash

sudo apt update
sudo apt install default-jre -y
javaVersion=$(java -version 2>&1 | head -n 1 | cut -d'"' -f2 | cut -d'.' -f1)

if [ "$javaVersion" = null ]
then
        echo "Java is not installed"
else
        echo "Java version is $javaVersion"
fi

if [ "$javaVersion" -gt 11 ]
then
        echo "java version is up to date - version $javaVersion" 
else
        echo "java version is outdated - lower than 11 $javaVersion"
fi
