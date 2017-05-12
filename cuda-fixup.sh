#!/bin/bash

th bin2ascii.lua <"$1" | python3 cuda-fixup.py | th ascii2bin.lua >"$2"
