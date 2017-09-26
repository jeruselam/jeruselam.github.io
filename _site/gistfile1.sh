#!/usr/bin/env bash
set -e

find images -name "*.png" -exec optipng -o7 {} \;
