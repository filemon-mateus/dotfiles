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

# light {{{
  alias light='
  ln -sf $HOME/Dropbox/dotfiles/kitty/light.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/light.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/light.vim $HOME/.vimrc'
# }}}

# dark {{{
  alias dark='
  ln -sf $HOME/Dropbox/dotfiles/kitty/dark.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/dark.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/dark.vim $HOME/.vimrc'
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
