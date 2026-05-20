#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: $0 <nombre_archivo>"
  exit 1
fi

archivo="$1"
echo "consult('${archivo}.pl')." | swipl
