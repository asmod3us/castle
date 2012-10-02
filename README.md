# My $HOME is my castle

castle is a collection of bash scripts to manage dotfiles. It provides a
convenient way to keep everything in sync using a git repo while at the
same time allowing to have machine-specific configuration. It also allows
you to quickly "move in" on a new machine by cloning the git repo and using
its setup script.

Disclaimer: castle was not written by a bash scripting expert. The
configuration presented here is from my own Macbook and Ubuntu boxes and
may not necessarily be useful to you. Things might not even work at all.

## Features

- modularized bash configuration that allows to customize settings per host and per os
- vim configuration based on pathogen
- solarized color theme for bash (including dircolors) and vim
- a setup script to quickly "move in" on new machines

## Installation
castle uses git submodules to manage vim pathogen plugins. It is intended to be cloned in your $HOME directory.
To install it, use 

	git clone --recursive

to ensure that all submodule repos are pulled. After cloning into
`~/castle` there is a setup script in `~/castle/setup`. Note that this
script will attempt to process every link, file and directory under
`~/castle/dotfiles` and link them into your `$HOME`. It will unlink existing links
that are in its way and create backup files following the naming convention
`filename-<timestamp>.dotfile`.

## bash configuration
castle has a special directory at `~/castle/dotfiles/shell` that holds a
modularized bash configuration. This configuration is bootstrapped by
linking `~/castle/bootstrap` to your `$HOME/.bashrc`. This is also done by
the setup script.

In the shell directory, put os or host specific configuration in files that
follow a `filename-<os>` or `filename-<hostname>` naming convention. For
instance, I keep my OS X specific environment variables in `env-darwin`.

## Adding dotfiles
To let castle manage a dotfile, just move it from `~/.dotfile` into
`~/castle/dotfile` and run `~/castle/setup` or create the symbolic link
yourself.

## Credits
castle is inspired by dotfiles and a stackoverflow posting that I am unable
to find in my browser history.
