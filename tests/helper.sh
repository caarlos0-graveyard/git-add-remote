#!/bin/sh
# setup a fake local repository with SSH protocol
fakerepo_ssh() {
  cd "$(mktempdir)" || exit
  git init -q
  git remote add origin git@github.com:fake/fake.git
  pwd
}

# setup a fake local repository with HTTPS protocol
fakerepo_https() {
  cd "$(mktempdir)" || exit
  git init -q
  git remote add origin https://github.com/fake/fake.git
  pwd
}

mktempdir() {
  mktemp -d 2>/dev/null || mktemp -d -t 'addremote'
}
