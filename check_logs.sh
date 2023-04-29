#!/bin/bash

if ! dpkg -l | grep -q apache2; then
    sudo apt-get update
    sudo apt-get install -y apache2
    sudo systemctl start apache2
    sudo systemctl enable apache2
fi

log_file="/var/log/apache2/access.log"

errors=$(grep -E ' [45][0-9]{2} ' $log_file)

if [ -n "$errors" ]; then
  echo "Errors found:"
  echo "$errors"
else
  echo "No errors found in the log."
fi

