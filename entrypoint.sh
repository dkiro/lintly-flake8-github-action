#!/usr/bin/env bash

args="."
if [[ $# -ne 0 ]]; then
    args="$@"
fi

cp .flake8 .config/flake8
flake8 --config .config/flake8 ${args} | lintly --api-key $INPUT_TOKEN --fail-on $INPUT_FAILIF --log --no-post-status
