# add-remote test suite

# setup

```console
$ ROOT="$(pwd)"
$ source add-remote.sh
$ source tests/helper.sh
$
```

# add-upstream

```console
$ cd "$(fakerepo)"
$ add-upstream another-fake
$ git config --get remote.upstream.url
git@github.com:another-fake/fake.git
$
```

# add-remote with 2 args

```console
$ cd "$(fakerepo)"
$ add-remote fork becker
$ git config --get remote.becker.url
git@github.com:fork/fake.git
$
```

# add-remote with 1 arg

```console
$ cd "$(fakerepo)"
$ add-remote caarlos0
$ git config --get remote.caarlos0.url
git@github.com:caarlos0/fake.git
$
```

# add-remote when folder is not git repository

```console
$ cd "$(mktemp -d)"
$ add-remote whatever
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-remote when folder is not git repository

```console
$ cd "$(fakerepo)"
$ git remote remove origin
$ add-remote ahoy
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-upstream when folder is not git repository

```console
$ cd "$(mktemp -d)"
$ add-upstream any
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-upstream when folder is not git repository

```console
$ cd "$(fakerepo)"
$ git remote remove origin
$ add-upstream nope
A remote called 'origin' doesn't exist. Aborting.
$
```
