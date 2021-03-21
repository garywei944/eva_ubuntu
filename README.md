# eva_ubuntu
Custom Linux (Ubuntu 20.04) configurations and dotfiles

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
