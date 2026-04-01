#!/bin/bash

echo "setup and configure server"

fileName=config.yaml
if [ -d "config" ]
then
        echo "reading config directory contents:"
        configFiles=$(ls config)
else
        echo "config dir not found, creating one now"
        mkdir config
fi

userGroup=xx
if [ userGroup == "admin"  ]
then
        echo "configure the server"
elif [ userGroup == "parallels" ]
then "administer the server"
else 
        echo "no permission to configure the server. Wrong user group."
fi


echo "using file $fileName to configure something"
echo "here are all config files: $configFiles"
~                                                       
