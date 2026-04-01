#!/bin/bash

echo "setup and configure server"

fileName=config.yaml

configDir=$1
if [ -d "$configDir" ]
then
        echo "reading config directory contents:"
        configFiles=$(ls $configDir)
else
        echo "config dir not found, creating one now"
        mkdir "$configDir"
        touch "$configDir/config.sh"
fi

userGroup=$2
if [ "$userGroup" == "admin"  ]
then
        echo "configure the server"
elif [ "$userGroup" == "parallels" ]
then "administer the server"
else
        echo "no permission to configure the server. Wrong user group."
fi


echo "using file $fileName to configure something"
echo "here are all config files: $configFiles"
