#!/bin/bash
# Author: Avanade
# Colored messages
set -e

[ -z "${1}" ] && ( echo "usage: ${0} <COLOR> [MESSAGE]"; exit 1; )

case "${1^^}" in
   RED )
      COLOR='\033[0;31m';;
   GREEN )
      COLOR='\033[0;32m';;
   BLUE )
      COLOR='\033[0;34m';;
   GRAY | GREY )
      COLOR='\033[1;30m';;
   * )
      echo "Unsupported color: ${1^}";
      exit 2;
esac

echo -e "${COLOR}${2:-Hello World}\033[0m"

