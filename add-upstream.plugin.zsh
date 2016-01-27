#!/bin/sh
# shellcheck disable=SC2039
add-upstream() {
  # shellcheck disable=SC2039
  local name remote current url
  name="$1"
  remote="$(git config --get remote.origin.url)"
  current="$(echo "$remote" | sed -e 's/.*github.com\://' -e 's/\/.*//')"
  url="$(echo "$remote" | sed -e "s/$current/$name/")"
  git remote add upstream "$url"
}
