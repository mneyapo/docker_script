#!/bin/bash

if [ -f /etc/init.d/mysql* ]; then
    echo "installed"
else
    echo "not installed"
fi

