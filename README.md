# erlang-build

Erlang version of elixir-build

required:
  - [erlenv](https://github.com/talentdeficit/erlenv)
  - read [building and installation instructions of Erlang](https://github.com/erlang/otp/blob/maint/HOWTO/INSTALL.md) or [Dockerfile](https://github.com/matsubara0507/erlang-build/blob/master/Dockerfile)

## Installation

### Installing as an erlenv plugin

Installing erlang-build as an exenv plugin will give you access to the `erlenv install` command.

```
$ git clone git@github.com:talentdeficit/erlenv.git ~/.erlenv/plugins/erlang-build
```

### Installing as a standalone program (advanced)

Installing erlang-build as a standalone program will give you access to the `erlang-build` command for precise control over Erlang version installation. 
If you have erlenv installed, you will also be able to use the `erlenv install` command.

```
$ git clone https://github.com/matsubara0507/erlang-build
$ cd erlang-build
$ ./install.sh
```

This will install erlang-build into `/usr/local`. 
If you do not have write permission to `/usr/local`, you will need to run `sudo ./install.sh` instead. 
You can install to a different prefix by setting the `PREFIX` environment variable.

## Usage

```
$ erlenv install 20.0
```
