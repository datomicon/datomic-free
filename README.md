## Description
A wrapper around [Datomic Free](https://my.datomic.com/downloads/free) that makes it easy to
start Datomic Free transactors and upgrade to newer versions.

## Installation

For first time users:

### With NPM (Node.js)
 [![NPM](https://nodei.co/npm/datomic-free.png?mini=true)](https://www.npmjs.org/package/datomic-free)

This `npm install datomic-free` also auto-installs the [bon](https://www.npmjs.com/package/bon) dependency, globally.

[![Build Status](https://img.shields.io/travis/datomicon/datomic-free.svg?style=flat)](https://travis-ci.org/datomicon/datomic-free)

If `datomic-free` doesn't work - set / export `$NODE_PATH` to the dir containing your global `node_modules`.  Run `dirname $(which bon)` to find out where they go.

NOTE: please choose either the `npm` approach above or the manual one below.
If you do both, the script may not run as it should.
Verify with `type -a datomic-free` for which there should be only one `datomic-free`.

If unhappy with this npm distribution just `npm rm -g datomic-free`.

### Manually (zsh)

```sh
$ git clone https://github.com/cldwalker/datomic-free.git ~/.datomic-free
$ ~/.datomic-free/bin/datomic-free start

# To make it easy to use `datomic-free` add an alias to your bashrc/zshrc
$ echo 'alias datomic-free=$HOME/.datomic-free/bin/datomic-free' >> ~/.zshrc
$ . ~/.zshrc
```

### Upgrade

The node package versions are independent of [datomic-free releases](https://github.com/cldwalker/datomic-free/releases) or datomic itself.
Just like with the manual install, the code is cloned to `~/.datomic-free/` and
upgrades would be manual too.

Some day there may be a `datomic-free upgrade` command to `git pull` as a convenience.

## Usage

```sh
$ datomic-free start
```

To specify transactor.properties, only with an absolute path:

```sh
$ datomic-free start /absolute/path/to/transactor.properties
```

To migrate existing data/ to datomic-free:

```sh
$ rm -rf ~/.datomic-free/data
$ cp -R $OLD_DATOMIC_REPO/data  ~/.datomic-free/
```

Whenever you'd like to update to the latest datomic-free:

```sh
$ datomic-free update
```

This new version is now the active datomic-free version. Since datomic-free keeps data outside
of versions in ~/.datomic-free/data, you use the same data across versions *by default*.

To update to a specific version, pass a version:

```sh
$ datomic-free update 0.8.3627
```

To use another version you've already installed:

```sh
$ datomic-free use 0.8.3646
```

## License

See LICENSE.txt. This project is in no way affiliated with Datomic (Metadata Partners, LLC).

## Credits

* Thanks to @richhickey and @stuarthalloway for datomic
* Thanks to @rkneufeld for the downloading function of the shell script
* Bug fixes: @sherbondy

## TODO

* Allow other config and args to bin/transactor
* rest command to execute bin/rest
* better help
* better exit codes
* better error checking for use
* convert this readme to a man page
