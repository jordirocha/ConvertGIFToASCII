#!/bin/bash

convertToASCII() {
  local images="$(ls ./scripts/images/*.png)"
  for image in $images; do
    ascii-image-converter "$image" -Ccf
  done
  sleep 2
}

convertToASCII
