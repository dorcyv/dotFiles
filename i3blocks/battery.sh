#!/bin/bash
echo "$(ponymix get-volume)%"
echo ""
ponymix is-muted
if [ $? -eq 0 ]; then
  echo "#cb4b16"
else
  echo "#859900"
fi
