#!/bin/sh

set -ex

# Switch to parent directory where script is located
cd "$(dirname "$0")" && cd ..

# Use arecord -D <DEVICE> ... if you need to use a different microphone (list them with arecord -L and prefer plughw: devices). 
# Use aplay -D <DEVICE> ... if you need to use a different playback device (list them with aplay -L and prefer plughw: devices).
python3 script/run \
  --name 'satellite1' \
  --uri 'tcp://0.0.0.0:10700' \
  --mic-command 'arecord -r 16000 -c 1 -f S16_LE -t raw' \
  --snd-command 'aplay -r 22050 -c 1 -f S16_LE -t raw' \
  --debug
