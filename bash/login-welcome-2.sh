#!/bin/bash
#
# This script produces the dynamic welcome message
# it should look like
#   Welcome to planet hostname, title name!

# Improve this script by using the value in the automatic variable $USER for the name
# Improve this script by adding some time and day of the week information to the welcome message
#   Use a format like this:
#   It is HH:MM AM on weekday.

###############
# Variables   #
###############
titles=("twinkling" "cute little" "shinning" "precious" "gorgeous" "beautiful-girl")
title=$(( ${#titles[@]} ))
titlerandom=$(( RANDOM % title ))

#title="Overload"
#myname=$USER
hostname=$(hostname)
time=$(date +%I:%M%p)
day=$(date +%A)

###############
# Main        #
###############
#variable=$(cat <<EOF

cowsay "Welcome to planet $hostname, "${titles[$titlerandom]} $USER!""
cowsay "It is $time on $day."







#if [ "$day" = 6] || ["$day" = 7]
#then
#  echo "It is $time on $day i.e. Weekend."
#else
#  echo "It is $time on $day i.e.Weekday."
#fi

#echo "It is $time on $day."

#EOF
#)
#cat <<EOF
#$(cowsay$variable)
#EOF
#cat <<EOF
#$message
#$time
#EOF
