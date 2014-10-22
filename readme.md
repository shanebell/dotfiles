Dotfiles
========

Repository of OSX config files.

All config files are stored in this git repo and are symlinked to the home directory using [stow](http://www.gnu.org/software/stow/).

To create a new config file create a directory (eg: 'bash') and add the config files to it. 

To automatically create/update symlinks in your home directory ($HOME) for all dotfiles run the install script:

	$ ./install.sh

To manually create symlinks for a specific directory of dotfiles run the following commands:

	$ cd ~/dotfiles
	$ stow -v --target=$HOME bash

See [here](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html?round=two) for more details.