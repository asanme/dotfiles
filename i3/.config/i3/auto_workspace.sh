#!/bin/bash

FOCUSED_OUTPUT=$(i3-msg -t get_workspaces | jq -r '.[] | select(.focused == true).output')

i3-msg "workspace $1, move workspace to output $FOCUSED_OUTPUT"
