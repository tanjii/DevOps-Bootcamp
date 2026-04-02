#!/bin/bash

echo "all params: $*"
echo "number of params: $#"

for parameter in $*
 do
         if [ -d "$parameter" ]
         then
                 echo "Listing content in selected folder"
                 ls -la
         fi
if [ -f "$parameter" ]
        then
                echo "Running scripts in the folder"
                ./$parameter
fi

  echo $parameter
 done
