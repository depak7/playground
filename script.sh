#!/bin/sh
echo hi

# is_palindrome STRING
# Succeeds if STRING reads the same forwards and backwards, ignoring case
# and non-alphanumeric characters.
is_palindrome() {
    cleaned=$(printf '%s' "$1" | tr -cd '[:alnum:]' | tr '[:upper:]' '[:lower:]')
    reversed=$(printf '%s' "$cleaned" | rev)
    [ "$cleaned" = "$reversed" ]
}
