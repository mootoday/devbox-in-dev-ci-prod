#!/bin/bash

IS_DEV=$([ -z "$CI" ] && [ -z "$PROD" ] && echo "true")
if [ -n "$IS_DEV" ]; then
  echo "Hello from the DEV plugin init_hook"
	devbox add nodejs@latest
fi
