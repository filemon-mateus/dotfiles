# history {{{
  HISTSIZE=10000
  SAVEHIST=9000
  HISTFILE=$HOME/.zsh_history
# }}}

# useful plugins {{{
  plugins=(
    zsh-z
    extract
    vi-mode
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
    history-substring-search
    conda-zsh-completion
  )
# }}}

# z-shell persistent, global settings {{{
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
  ZSH_THEME=powerlevel10k/powerlevel10k
  ZSH_DISABLE_COMPFIX=true
# }}}

# exports {{{
  export ZSH=$HOME/.oh-my-zsh
  export PATH="$HOME/.composer/vendor/bin:$PATH"
  export PATH="/usr/local/texlive/2020/bin/x86_64-darwin:$PATH"
  export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"
  source $HOME/.cargo/env
  source $ZSH/oh-my-zsh.sh
# }}}

# nord colorscheme: adapted from https://www.nordtheme.com {{{
  alias nord='
  cp $HOME/MEGAsync/Dotfiles/kitty/kitty-nord.conf $HOME/.config/kitty/kitty.conf
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.nord $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.nord $HOME/.tmux.conf'
# }}}

# paper colorscheme: adapted from https://github.com/NLKNguyen/papercolor-theme {{{
  alias paper='
  cp $HOME/MEGAsync/Dotfiles/kitty/kitty-light.conf $HOME/.config/kitty/kitty.conf
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.light $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.light $HOME/.tmux.conf'
# }}}

# solarized colorscheme: adapted from https://github.com/NLKNguyen/papercolor-theme {{{
  alias sol='
  cp $HOME/MEGAsync/Dotfiles/kitty/kitty-sol.conf $HOME/.config/kitty/kitty.conf
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.sol $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.sol $HOME/.tmux.conf'
# }}}

# molokai colorscheme {{{
  alias molokai='
  cp $HOME/MEGAsync/Dotfiles/kitty/kitty-molokai.conf $HOME/.config/kitty/kitty.conf
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.molokai $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.molokai $HOME/.tmux.conf'
# }}}


# bat theme and config file {{{
  export BAT_CONFIG_PATH="$HOME/.config/bat/bat.conf"
  export BAT_THEME=$COLORSCHEME
# }}}

# fzf default config settings {{{
  export FZF_DEFAULT_OPTS='
    --prompt="> "
    --marker="> "
    --pointer=">"
    --height=100%
    --layout=reverse
    --bind=ctrl-w:up,ctrl-s:down
    --color=fg:-1,bg:-1,hl:02,fg+:-1,bg+:-1,hl+:05,info:04,prompt:02,pointer:05,marker:03,spinner:01,border:15
    --preview "bat --theme=$COLORSCHEME --color=always {}"
  '
# }}}

# lsd {{{
  alias l='lsd --oneline --group-dirs first --size short --icon never'
  alias ls='lsd --group-dirs first --size short --icon never'
  alias ll='lsd --long --group-dirs first --size short --blocks permission,user,size,date,name --icon never'
  alias la='lsd --long --all --group-dirs first --size short --blocks permission,user,size,date,name --icon never'
  export LS_COLORS='fi=32:pi=33:cd=33:di=34;04:so=31:ln=35:ex=33:bd=33:or=31'
# }}}

# editor of choice nvim {{{
  alias v='nvim'
# }}}

# internet {{{
  alias ytv='youtube-dl -ic'
  alias yta='youtube-dl -icx --audio-format mp3'
# }}}

# version control {{{
  alias gi="git init"
  # alias gs="git status"
  alias gd="git diff"
  alias gdh="git diff HEAD"
  alias gc="git clone $1 $2"
  alias gcm="git commit -m "$1""
  alias gaa="git add -A ."
  alias gpo="git push origin $1"
  alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  alias glo="git log --oneline"
  alias grhh="git reset --hard HEAD"
  alias gcp="git cherry-pick $1"
# }}}

# npm {{{
  alias ni='npm install'
  alias nis='npm i -S'
  alias nid='npm i -D'
  alias nig='npm i -g'
  alias nr='npm run $1'
  alias nrs='npm run start'
  alias nrb='npm run build'
  alias nrt='npm run test'
  alias nrc='npm run commit'
# }}}

# system aliases {{{
  alias sys='archey -o'
  alias pipes='pipes.sh'
# }}}

# conda initializer {{{
  __conda_setup="$('/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ -f "/opt/miniconda3/etc/profile.d/conda.sh" ]; then
    . "/opt/miniconda3/etc/profile.d/conda.sh"
  else
    export PATH="/opt/miniconda3/bin:$PATH"
  fi
  unset __conda_setup
# }}}

# terminal prompt and fzf tab completions {{{
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  [[ ! -f ~/.fzf.zsh  ]] || source ~/.fzf.zsh
# }}}
