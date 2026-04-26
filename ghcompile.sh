#!/bin/bash

if [ -z "$1" ]; then
  echo "Uso: $0 <nombre_archivo>"
  exit 1
fi

archivo="$1"
mkdir -p ./bin
ghc -outputdir ./bin "${archivo}.hs" -o "./bin/${archivo}.bin"
./bin/${archivo}.bin
