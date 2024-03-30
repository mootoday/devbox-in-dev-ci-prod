#!/bin/bash

IS_CI=$([ -n "$CI" ] && echo "true")
if [ -n "$IS_CI" ]; then
  echo "Hello from the CI plugin init_hook"
  devbox add nodejs@20
fi
