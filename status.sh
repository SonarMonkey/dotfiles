#!/bin/bash

while true; do
 date=$(date +%m-%d-%Y)
 time=$(date +%I:%M)
 echo Hello Riley, it is $time on $date.
 sleep 15
 fortune=$(fortune)
 echo $fortune
 sleep 15
done
