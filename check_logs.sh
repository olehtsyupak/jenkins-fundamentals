#!/bin/bash

log_file="/var/log/apache2/access.log"

errors=$(grep -E ' [45][0-9]{2} ' $log_file)

if [ -n "$errors" ]; then
  echo "Errors found:"
  echo "$errors"
else
  echo "No errors found in the log."
fi

