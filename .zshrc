# plugins {{{
  plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
  )
# }}}

# z-shell persistent, global settings {{{
  ZSH_THEME="robbyrussell"
# }}}

# ls colors {{{
  export LS_COLORS='fi=32:pi=33:cd=33:di=34;04:so=31:ln=35:ex=33:bd=33:or=31'
# }}}

# oh-my-zsh {{{
  source $HOME/.oh-my-zsh/oh-my-zsh.sh
# }}}

# themes {{{
for theme in light dark; do
  alias $theme="
  ln -sf $HOME/Dropbox/dotfiles/kitty/$theme.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/$theme.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/$theme.vim $HOME/.vimrc"
done
# }}}

# bat config file {{{
  export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
# }}}

# ls {{{
  alias ls='ls -hgG --color=auto --group-directories-first --time-style=iso'
  alias ll='ls -l'
  alias la='ls -a'
# }}}

# editor of choice vim {{{
  alias v='vim'
# }}}

# system {{{
  alias man='tldr'
  alias cat='batcat'
  alias open='xdg-open'
  alias remove='yes | sudo apt remove'
  alias install='yes | sudo apt install'
  alias putclip='xsel --clipboard'
# }}}
