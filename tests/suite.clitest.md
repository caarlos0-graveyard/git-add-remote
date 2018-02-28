# add-remote test suite

# setup

```console
$ ROOT="$(pwd)"
$ source add-remote.sh
$ source tests/helper.sh
$
```

# add-upstream with ssh

```console
$ cd "$(fakerepo_ssh)"
$ add-upstream another-fake
$ git config --get remote.upstream.url
git@github.com:another-fake/fake.git
$
```

# add-upstream with https

```console
$ cd "$(fakerepo_https)"
$ add-upstream another-fake
$ git config --get remote.upstream.url
https://github.com/another-fake/fake.git
$
```

# add-remote with ssh and 2 args

```console
$ cd "$(fakerepo_ssh)"
$ add-remote fork becker
$ git config --get remote.becker.url
git@github.com:fork/fake.git
$
```

# add-remote with with https and 2 args

```console
$ cd "$(fakerepo_https)"
$ add-remote fork becker
$ git config --get remote.becker.url
https://github.com/fork/fake.git
$
```

# add-remote with ssh and 1 arg

```console
$ cd "$(fakerepo_ssh)"
$ add-remote caarlos0
$ git config --get remote.caarlos0.url
git@github.com:caarlos0/fake.git
$
```

# add-remote with https and 1 arg

```console
$ cd "$(fakerepo_https)"
$ add-remote caarlos0
$ git config --get remote.caarlos0.url
https://github.com/caarlos0/fake.git
$
```

# add-remote when folder is not git repository

```console
$ cd "$(mktempdir)"
$ add-remote whatever
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-upstream when folder is not git repository

```console
$ cd "$(mktempdir)"
$ add-upstream any
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-remote when origin does not exist with ssh

```console
$ cd "$(fakerepo_ssh)"
$ git remote remove origin
$ add-remote ahoy
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-remote when origin does not exist with https

```console
$ cd "$(fakerepo_https)"
$ git remote remove origin
$ add-remote ahoy
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-upstream when origin does not exist with ssh

```console
$ cd "$(fakerepo_ssh)"
$ git remote remove origin
$ add-upstream nope
A remote called 'origin' doesn't exist. Aborting.
$
```

# add-upstream when origin does not exist

```console
$ cd "$(fakerepo_https)"
$ git remote remove origin
$ add-upstream nope
A remote called 'origin' doesn't exist. Aborting.
$
```
