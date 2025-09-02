#!/bin/sh

printf "Thanks for running the Docker in Action Chapter 3 scavenger hunt.\nEnter the password: "
read pass
secret=dafc04a67971a7dab102d25c8b8d889979119d56

if `echo $pass | sha1sum | grep -q $secret`; then
    echo "Congratulations! You've found the password using Docker Hub and used an interactive container!" 
elif [ "$pass" == "$secret" ]; then
    echo "Incorrect. You won't find the answer in this image without some serious compute power."
else
    echo "Incorrect. Maybe you could find another image that contains the answer?"
fi
