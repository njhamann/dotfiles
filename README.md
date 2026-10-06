dotfiles
========

Config files (vim, tmux, git, bash aliases, readline, editorconfig),
organized as GNU Stow packages.

```
git clone https://github.com/njhamann/dotfiles.git ~/dotfiles
~/dotfiles/install.sh            # links all packages into ~
~/dotfiles/install.sh vim tmux   # or just some of them
```

`install.sh` uses `stow` if it's installed and falls back to `ln -s` otherwise.
Stow refuses to overwrite an existing real file, so move it aside first.

Edit `~/.vimrc` / `~/.tmux.conf` in place; they're symlinks into this repo.

Machine-specific settings go in `~/.vimrc.local`, `~/.tmux.local.conf` and
`~/.gitconfig.local`, which are loaded if present and not tracked here.
Put git `[user]` name/email in `~/.gitconfig.local`, and run `gh auth setup-git`
so HTTPS pushes to GitHub authenticate through `gh`.

Quick grab on a throwaway server:

```
curl -fsSL https://raw.githubusercontent.com/njhamann/dotfiles/master/vim/.vimrc -o ~/.vimrc
```
