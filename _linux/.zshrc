# history {{{
  HISTSIZE=10000
  SAVEHIST=10000
  HISTFILE=$HOME/.zsh_history
# }}}

# useful plugins {{{
  plugins=(
    extract
    vi-mode
    autojump
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-history-substring-search
    conda-zsh-completion
  )
# }}}

# z-shell persistent, global settings {{{
  ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
  ZSH_THEME=powerlevel10k/powerlevel10k
  ZSH_DISABLE_COMPFIX=true
# }}}

# exports {{{
  export PATH=$HOME/.config/composer/vendor/bin:$PATH
  export ZSH=$HOME/.oh-my-zsh
  source $HOME/.cargo/env
  source $ZSH/oh-my-zsh.sh
# }}}

# nord colorscheme {{{
  alias nord='
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.nord $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.nord $HOME/.tmux.conf'
# }}}

# paper colorscheme {{{
  alias paper='
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.light $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.light $HOME/.tmux.conf'
# }}}

# solarized colorscheme {{{
  alias sol='
  cp $HOME/MEGAsync/Dotfiles/vim/.vimrc.sol $HOME/.vimrc
  cp $HOME/MEGAsync/Dotfiles/tmux/.tmux.conf.sol $HOME/.tmux.conf'
# }}}

# molokai colorscheme {{{
  alias molokai='
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
    --pointer=">"
    --marker="*"
    --height=100%
    --layout=reverse
    --bind=ctrl-w:up,ctrl-s:down
    --color=fg:#b3b3b3,bg:#121212,hl:#97e123,fg+:#b3b3b3,bg+:#121212,hl+:#ae6698,info:#0f7fcf,prompt:#97e123,pointer:#ae6698,marker:#f6b655,spinner:#cc2846,border:#2b2b2b
    --preview "batcat --theme=$COLORSCHEME --color=always {}"
  '
# }}}

# lsd {{{
  alias l="lsd --oneline --group-dirs first --size short --icon always --config-file $HOME/.config/lsd/conf.yml"
  alias ls="lsd --group-dirs first --size short --icon always --config-file $HOME/.config/lsd/conf.yml"
  alias ll="lsd --oneline --group-dirs first --size short --blocks permission,user,size,date,name --icon always --config-file $HOME/.config/lsd/conf.yml"
  alias la="lsd --oneline --all --group-dirs first --size short --blocks permission,user,size,date,name --icon always --config-file $HOME/.config/lsd/conf.yml"
  export LS_COLORS="fi=32:pi=33:cd=33:di=34:so=31:ln=35:ex=33:bd=33:or=31"
# }}}

# editor of choice nvim {{{
  alias v='vim'
  alias g='gvim'
  alias r='ranger'
  alias z='zathura'
# }}}

# internet {{{
  alias ytv='youtube-dl -ic'
  alias yta='youtube-dl -icx --audio-format mp3'
# }}}

# version control {{{
  alias gi="git init"
  alias gs="git status"
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

# system aliases {{{
  alias open='xdg-open'
  alias update='sudo apt-get update -y'
  alias remove='sudo apt-get remove -y'
  alias upgrade='sudo apt-get upgrade -y'
  alias install='sudo apt-get install -y'
  alias reinstall='sudo apt-get install --reinstall -y'
  alias purge='sudo apt-get remove --purge -y'
  alias clean='sudo apt-get autoclean -y'
  alias font-refresh='fc-cache -fv'
  alias pipes='pipes.sh'
  alias putclip='xsel --clipboard'
# }}}

# conda initializer {{{
  __conda_setup="$('$HOME/Miniconda/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
  if [ -f "$HOME/Miniconda/etc/profile.d/conda.sh" ]; then
    . "$HOME/Miniconda/etc/profile.d/conda.sh"
  else
    export PATH="$HOME/Miniconda/bin:$PATH"
  fi
  unset __conda_setup
# }}}

# terminal prompt and fzf tab completions {{{
  [[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
  [[ ! -f ~/.fzf.zsh  ]] || source ~/.fzf.zsh
# }}}
