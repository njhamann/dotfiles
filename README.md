dotfiles
========

Config files for vim and tmux (plus an old bashrc), organized as GNU Stow packages.

```
git clone https://github.com/njhamann/environment-config-files.git ~/dotfiles
~/dotfiles/install.sh            # links vim and tmux into ~
~/dotfiles/install.sh bash       # optional: also link the bashrc
```

`install.sh` uses `stow` if it's installed and falls back to `ln -s` otherwise.
Stow refuses to overwrite an existing real file, so move it aside first.

Edit `~/.vimrc` / `~/.tmux.conf` in place; they're symlinks into this repo.

Machine-specific settings go in `~/.vimrc.local` and `~/.tmux.local.conf`,
which are loaded if present and not tracked here.

Quick grab on a throwaway server:

```
curl -fsSL https://raw.githubusercontent.com/njhamann/environment-config-files/master/vim/.vimrc -o ~/.vimrc
```
