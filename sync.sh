#!/bin/bash
set -e

# This is used to automatically sync changes made to the submodules
# Pulls the changes from the remote submodule
git submodule update --init --recursive --remote --merge
