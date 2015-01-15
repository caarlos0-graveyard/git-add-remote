#!/bin/zsh

add-upstream() {
  local name="$1"
  local remote="$(git config --get remote.origin.url)"
  local current="$(echo "$remote" | sed -e 's/.*github.com\://' -e 's/\/.*//')"
  local url="${remote/$current/$name}"
  git remote add upstream "$url"
}

