# Dan's Bash Dotfiles

Personal dotfiles configuration for development environments, optimized for Gitpod.

## Contents

- **bashrc**: Main bash configuration with ulimit settings and sourcing of other configs
- **bash_aliases**: Useful aliases and functions for git, directory navigation, and file listing
- **gitconfig**: Git configuration with color settings and VS Code as default editor
- **prompt.sh**: Custom colored bash prompt with git status integration
- **install.sh**: Installation script that creates symbolic links and backs up existing files

## Usage in Gitpod

This repository is configured to work as a Gitpod dotfiles repository. To use it:

1. Go to [Gitpod Settings](https://gitpod.io/user/preferences)
2. Under "Dotfiles", enter this repository URL: `https://github.com/DanielGomez8/dan_bash`
3. New Gitpod workspaces will automatically clone and install these dotfiles

## Manual Installation

```bash
git clone https://github.com/DanielGomez8/dan_bash.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Features

- **Git aliases**: Quick shortcuts for common git operations (`gits`, `gitcom`, `gitnb`, etc.)
- **Directory functions**: `mkcd` to create and enter directories in one command
- **Colored prompt**: Shows current user, directory, and git branch status
- **File listing**: Enhanced `ls` with colors and human-readable sizes
- **Gitpod integration**: Preserves Gitpod's default settings while adding customizations

## Git Aliases

- `gits` - git status
- `gitaa` - git add --all
- `gitcom "message"` - git commit with message
- `gitnb "branch"` - create new branch from master
- `gitpu` / `gitp` - git push
- `gitpushu` - push current branch with upstream
- `gitmaster` - checkout master
- `gitpm` - pull from origin master