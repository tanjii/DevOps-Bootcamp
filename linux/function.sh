#!/bin/bash

 function gameScore {
  sum=0
  while true
  do
        read -p "Enter a score: " score

        if [ "$score" == "q" ]
        then
                break
        fi

        sum=$(($sum+$score))
        echo "Total score: $sum"

        if [ "$sum" -gt 100 ]
        then
                echo "Game over, score is $sum" 
                break
        fi

  done
 }

 gameScore