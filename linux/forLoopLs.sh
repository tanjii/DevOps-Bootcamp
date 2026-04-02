#!/bin/bash

echo "all params: $*"
echo "number of params: $#"

for parameter in $*
 do
         if [ -d "$parameter" ]
         then
                 echo "Executing scripts in config folder"
                 ls -la
         fi

  echo $parameter
 done
