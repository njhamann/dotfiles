# Personal shell additions. Debian/Ubuntu's default ~/.bashrc sources this file.

case ":$PATH:" in
    *":$HOME/.local/bin:"*) ;;
    *) export PATH=$HOME/.local/bin:$PATH ;;
esac

alias ll='ls -alF'
alias la='ls -A'
alias gs='git status'
