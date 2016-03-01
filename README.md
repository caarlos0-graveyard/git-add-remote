zsh-add-remote [![Build Status](https://travis-ci.org/caarlos0/zsh-add-remote.svg?branch=master)](https://travis-ci.org/caarlos0/zsh-open-pr)
==================

ZSH plugin to easily add the remote remote to your git fork.

## How

Basically, it gets you origin remote and adds an remote remote with
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
$ antibody bundle caarlos0/zsh-add-remote
```

### Using antigen:

```console
$ antigen bundle caarlos0/zsh-add-remote
```

## As a git alias

```console
$ git config --global alias.add-upstream '!zsh -ic \"add-upstream $*\"''
$ git config --global alias.add-remote '!zsh -ic \"add-remote $*\"''
$ git add-upstream org
$ git add-remote user remote_name
$ git add-remote user
```
