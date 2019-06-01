#!/bin/sh
set -e

local DESTDIR
DESTDIR="$HOME/.liquidprompt"

git clone git@github.com:nojhan/liquidprompt.git "$DESTDIR"
