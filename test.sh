#!/bin/bash

if [ -x 'wget' ];then
    COMMANDWEB="wget"
else
    COMMANDWEB="curl -OL"
fi

echo $COMMANDWEB