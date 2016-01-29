zsh-add-upstream [![Build Status](https://travis-ci.org/caarlos0/zsh-add-upstream.svg?branch=master)](https://travis-ci.org/caarlos0/zsh-open-pr)
==================

ZSH plugin to easily add the upstream remote to your git fork.

## How

Basically, it gets you origin remote and adds an upstream remote with
the same URL, changing the user to what you pass as parameter:

```console
$ git remote -v
origin  git@github.com:caarlos0/random.git (fetch)
origin  git@github.com:caarlos0/random.git (push)

$ add-upstream random

$ git remote -v
origin  git@github.com:caarlos0/random.git (fetch)
origin  git@github.com:caarlos0/random.git (push)
upstream  git@github.com:random/random.git (fetch)
upstream  git@github.com:random/random.git (push)
```

## Installation

### Using antibody:

```console
$ antibody bundle caarlos0/zsh-add-upstream
```

### Using antigen:

```console
$ antigen bundle caarlos0/zsh-add-upstream
```

## As a git alias

```console
$ git config --global alias.add-upstream '!zsh -ic \"add-upstream $*\"''
$ git add-upstream org
```
