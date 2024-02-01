#!/bin/bash

mynet=$(ip a | grep global | grep -Eo [0-9]+.[0-9]+.[0-9]+.[0-9]+/[0-9]+)
echo "$mynet"
nmap $@ $mynet
