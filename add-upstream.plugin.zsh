#!/bin/sh
add-upstream() {
  local name remote current url
  name="$1"
  remote="$(git config --get remote.origin.url)"
  current="$(echo "$remote" | sed -e 's/.*github.com\://' -e 's/\/.*//')"
  url="${remote/$current/$name}"
  git remote add upstream "$url"
}
