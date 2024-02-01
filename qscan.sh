#!/bin/bash

mynet=$(ip a | grep global | grep -Eo [0-9]+.[0-9]+.[0-9]+.[0-9]+/[0-9]+) # heavily scuffed, may not work on your machine! please let me know if it doesn't
echo "$mynet"
nmap $@ $mynet
