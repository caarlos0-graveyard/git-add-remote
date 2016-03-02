#!/bin/sh
# setups a fake local repository
fakerepo() {
  cd "$(mktempdir)" || exit
  git init -q
  git remote add origin git@github.com:fake/fake.git
  pwd
}

mktempdir() {
  mktemp -d 2>/dev/null || mktemp -d -t 'addremote'
}
