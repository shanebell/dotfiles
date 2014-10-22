Dotfiles
========

Repository of OSX config files.

All config files are stored in this git repo and are symlinked to the home directory using [stow](http://www.gnu.org/software/stow/).

To create a new config file create a directory (eg: 'bash') and add the config files to it. To automatically create symlinks in the home directory run the following commands:

	$ cd ~/dotfiles
	$ stow bash

See [here](http://brandon.invergo.net/news/2012-05-26-using-gnu-stow-to-manage-your-dotfiles.html?round=two) for more details.