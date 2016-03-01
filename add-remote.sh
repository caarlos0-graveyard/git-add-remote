#!/bin/sh
# gets the url for the given fork
__addremote_url() {
  # shellcheck disable=SC2039
  local fork remote current
  fork="$1"
  remote="$(git config --get remote.origin.url)"
  current="$(echo "$remote" | sed -e 's/.*github.com\://' -e 's/\/.*//')"
  echo "$remote" | sed -e "s/$current/$fork/"
}

# adds a remote
# shellcheck disable=SC2039
add-remote() {
  # shellcheck disable=SC2039
  local fork="$1" name="$2" url
  test -z "$fork" && fork="$name"
  url="$(__addremote_url "$fork")"
  git remote add "$name" "$url"
}

# adds an upstream remote
# shellcheck disable=SC2039
add-upstream() {
  add-remote "upstream" "$1"
}
