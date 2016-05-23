#!/bin/bash

# Usage: make-wheel python/package.gz
pip wheel -f wheels/generic -f python --wheel-dir=wheels/generic $1
