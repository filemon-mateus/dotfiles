# history {{{
  HISTSIZE=1000
  SAVEHIST=1000
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
  ZSH_THEME=powerlevel10k/powerlevel10k
  ZSH_DISABLE_COMPFIX=true
# }}}

# exports {{{
  export ZSH=$HOME/.oh-my-zsh
  export LS_COLORS='fi=32:pi=33:cd=33:di=34:so=31:ln=35:ex=33:bd=33:or=31'
  source $ZSH/oh-my-zsh.sh
# }}}

# nord colorscheme {{{
  alias nord='cp $HOME/Dropbox/dotfiles/_linux/vim/nord.vim $HOME/.vimrc'
# }}}

# paper colorscheme {{{
  alias paper='cp $HOME/Dropbox/dotfiles/_linux/vim/paper.vim $HOME/.vimrc'
# }}}

# molokai colorscheme {{{
  alias molokai='cp $HOME/Dropbox/dotfiles/_linux/vim/molokai.vim $HOME/.vimrc'
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
    --color=fg:-1,bg:-1,hl:02,fg+:-1,bg+:-1,hl+:05,info:04,prompt:02,pointer:05,marker:03,spinner:01,border:15
  '
# }}}

# lsd {{{
  alias ls='lsd --config-file $HOME/.config/lsd/conf.yml'
  alias ll='lsd -l --config-file $HOME/.config/lsd/conf.yml'
  alias la='lsd -a --config-file $HOME/.config/lsd/conf.yml'
# }}}

# editor of choice vim {{{
  alias v='vim'
  alias g='gvim'
  alias z='zathura'
# }}}

# internet {{{
  alias ytv='yt-dlp -ic'
  alias yta='yt-dlp -icx --audio-format mp3'
# }}}

# version control {{{
  alias gi='git init'
  alias gs='git status'
  alias gd='git diff'
  alias gdh='git diff HEAD'
  alias gc='git clone $1 $2'
  alias gcm='git commit -m '$1''
  alias gaa='git add -A .'
  alias gpo='git push origin $1'
  alias gl="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
  alias glo='git log --oneline'
  alias grhh='git reset --hard HEAD'
  alias gcp='git cherry-pick $1'
# }}}

# system aliases {{{
  alias cat='bat'
  alias man='tldr'
  alias open='xdg-open'
  alias update='yes | sudo apt update'
  alias remove='yes | sudo apt remove'
  alias upgrade='yes | sudo apt upgrade'
  alias install='yes | sudo apt install'
  alias purge='yes | sudo apt remove --purge'
  alias clean='yes | sudo apt autoclean'
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
