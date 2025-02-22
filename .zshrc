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

# nord {{{
  alias nord='
  ln -sf $HOME/Dropbox/dotfiles/kitty/nord.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/nord.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/nord.vim $HOME/.vimrc'
# }}}

# paper {{{
  alias paper='
  ln -sf $HOME/Dropbox/dotfiles/kitty/paper.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/paper.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/paper.vim $HOME/.vimrc'
# }}}

# molokai {{{
  alias molokai='
  ln -sf $HOME/Dropbox/dotfiles/kitty/molokai.conf $HOME/.config/kitty/kitty.conf && kill -SIGUSR1 $KITTY_PID
  ln -sf $HOME/Dropbox/dotfiles/bat/molokai.conf $HOME/.config/bat/bat.conf
  ln -sf $HOME/Dropbox/dotfiles/vim/molokai.vim $HOME/.vimrc'
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
