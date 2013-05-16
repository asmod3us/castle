# My $HOME is my castle

castle is a collection of bash scripts to manage dotfiles. It provides a
convenient way to keep everything in sync using a git repo while at the
same time allowing to have machine-specific configuration. It also allows
you to quickly "move in" on a new machine by cloning the git repo and using
its setup script.

Disclaimer: castle was not written by a bash scripting expert. The
configuration presented here is from my own Mac and Linux boxes and
may not necessarily be useful to you.

## Features

- modularized bash configuration that allows to customize settings per host and per os
- vim configuration based on pathogen
- solarized color theme for bash, vim and dircolors
- a setup script to quickly "move in" on new machines

## Installation

castle uses git submodules to manage vim plugins with pathogen. The
recommended (as in: the only tested and supported) install location is to clone
it into your $HOME directory. To install it, use

	git clone --recursive https://github.com/asmod3us/castle $HOME/castle

to ensure that all submodule repos are pulled. After cloning into
`~/castle` there is a setup script in `~/castle/setup`. Note that this
script will attempt to process every link, file and directory under
`~/castle/dotfiles` and link them into your `$HOME`. It will unlink existing links
that are in its way and create backup files following the naming convention
`filename-<timestamp>.dotfile`.

## bash configuration
castle has a special directory at `~/castle/dotfiles/shell` which holds a
modularized bash configuration. This configuration is bootstrapped with the
setup script by linking `~/castle/bootstrap` to your `$HOME/.bashrc`.

In the shell directory, put os or host specific configuration in files that
follow a `filename-<os>` or `filename-<hostname>` naming convention. For
instance, I keep my OS X specific environment variables in `env-darwin`.

## vim configuration
castle also supports os-specific configuration files for vim in
`castle/dotfiles/vim/os`. It matches the output of `uname` against
hard-coded strings (currently: `Darwin` for Mac; otherwise Linux is assumed).

## Adding dotfiles
To let castle manage a dotfile, just move it from `~/.dotfile` into
`~/castle/dotfile` and run `~/castle/setup` or create the symbolic link
yourself.

## Ignore generated documentation
From [StackOverFlow
Tip](http://stackoverflow.com/questions/4343544/generating-tags-to-different-location-by-pathogen/4346300#4346300): this will ignore untracked content in submodules and thereby also generated documentation.

	for s in `git submodule  --quiet foreach 'echo $name'` ; do git config submodule.$s.ignore untracked ; done

## Update all submodules to latest
From [StackOverflow discussion](http://stackoverflow.com/questions/1030169/git-easy-way-pull-latest-of-all-submodules): update all submodules to latest version

	git submodule foreach git pull origin master

or maybe a bit faster by running in parallel:

	git submodule foreach "(git checkout master; git pull)&"

## Credits
castle is inspired by dotfiles and a stackoverflow posting that I am unable
to find in my browser history.
