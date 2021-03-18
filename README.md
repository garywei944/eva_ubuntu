# eva_ubuntu
Custom Linux (Ubuntu 20.04) configurations and dotfiles

## Stop using Ubuntu
I'm getting tired with some incompatibility that using gnome and awesome wm at the same time. Also, there seems to be some issues that super hard to find a workaround.

* Does not response for `Ctrl + Alt + S` when using JetBrains IDE's. It seems some issue related to bad configuration of gnome. 
* Some wired issues with chrome and how keyring is stored on gnome.
* chrome, teamviewer, and other PPA not compatible with each other. Sometimes their signature conflict with each other.
* Don't want to upgrade the system every 2 years...
* To be a fundamentalism, *KISS(Keep it Simple, Stupid)* is the very first principle I learned from algorithm competition. For sure, Ubuntu suits those who just came from Windows or macOS, like me one year ago, but probably won't any more.

In all, I'm going to switch to Arch Linux and see if it's better. Checkout [eva_arch](https://github.com/garywei944/eva_arch) to see how everything goes.

## Installation
To clone the repo to the existing user home directory and preserve other files, I use the following commands
```bash
cd ~
rm -fr .git
git init
git remote add origin https://github.com:garywei944/eva_ubuntu.git
git config core.excludesFile .eva.gitignore
git fetch
git reset --hard origin/main
git branch -m master main
git branch --set-upstream-to=origin/main main
```
## `.gitignore` and `.eva.gitignore`
Some useful file search tools and grep tools like `rg` and `fd-find` check `.gitignore` before a subdirectory is expanded or a file is read to improve performance. But maintaining a regular `.gitignore` file for this repo at the user's home directory makes these improvement trivial and useless. So my workaround is to use `.eva.gitignore` instead of `.gitignore` by adding a project level configuration `core.excludesFile`. Note that `git` still response for a `.gitignore` file in every directory.
