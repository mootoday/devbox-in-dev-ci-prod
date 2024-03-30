#!/bin/bash

IS_PROD=$([ -n "$PROD" ] && echo "true")
if [ -n "$IS_PROD" ]; then
  echo "Hello from the PROD plugin init_hook"
  devbox add nodejs@18
fi
