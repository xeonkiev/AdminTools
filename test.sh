#!/bin/bash

if [ "$USER" != "root" ]; then
    echo "Please start the script with ROOT"
    exit
fi