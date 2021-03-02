#!/bin/bash
# Welcome to bash scripting
# Author: Excavator
# Date: 2/2/2021
echo "Hello $(basename $0) ! May I ask your name: "
read
echo "Hello $REPLY"
exit 0
