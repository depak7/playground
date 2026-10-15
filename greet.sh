#!/usr/bin/env bash

say_hello() {
  local name="${1:-world}"
  printf 'Hello, %s!\n' "$name"
}
