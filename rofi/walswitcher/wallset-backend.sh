#!/bin/bash

IMAGE="$1"

awww img "$IMAGE" --transition-type="wipe" --transition-step=240 --transition-fps="120"


