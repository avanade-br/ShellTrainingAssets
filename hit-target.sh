#!/bin/bash
# Author: Avanade
# Limited attempts to find a random char in GUID
set -e

TARGET=0

for i in {1..5}; do
   GUID=`cat /proc/sys/kernel/random/uuid`;
   [ "${DEBUG}" == 'true' ] \
      && echo -e "\033[1;30mGUID => [${GUID}]\033[0m";
   if [[ "${GUID}" =~ ^${TARGET} ]]; then
      echo "Target found after ${i} attempt(s)" && exit 0;
   fi
   echo "Attempt #${i} - Target not found";
done

exit 1;