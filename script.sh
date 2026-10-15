#!/bin/sh
echo hi

# Exit 0 when the argument is a palindrome, ignoring case and non-letters.
is_palindrome() {
  s=$(printf '%s' "$1" | tr '[:upper:]' '[:lower:]' | tr -cd '[:alpha:]')
  while [ "${#s}" -gt 1 ]; do
    first=${s%"${s#?}"}
    last=${s#"${s%?}"}
    [ "$first" = "$last" ] || return 1
    s=${s#?}
    s=${s%?}
  done
  return 0
}
