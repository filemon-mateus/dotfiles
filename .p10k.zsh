'builtin' 'local' '-a' 'p10k_config_opts'
[[ ! -o 'aliases'         ]] || p10k_config_opts+=('aliases')
[[ ! -o 'sh_glob'         ]] || p10k_config_opts+=('sh_glob')
[[ ! -o 'no_brace_expand' ]] || p10k_config_opts+=('no_brace_expand')
'builtin' 'setopt' 'no_aliases' 'no_sh_glob' 'brace_expand'
() {
  emulate -L zsh
  setopt no_unset
  unset -m 'POWERLEVEL9K_*'
  typeset -g POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs context command_execution_time newline virtualenv anaconda prompt_char)
  typeset -g POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=()
  typeset -g POWERLEVEL9K_BACKGROUND=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_{LEFT,RIGHT}_WHITESPACE=
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SUBSEGMENT_SEPARATOR=' '
  typeset -g POWERLEVEL9K_{LEFT,RIGHT}_SEGMENT_SEPARATOR=
  typeset -g POWERLEVEL9K_VISUAL_IDENTIFIER_EXPANSION=
  typeset -g POWERLEVEL9K_PROMPT_ADD_NEWLINE=true
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS}_FOREGROUND=magenta
  typeset -g POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS}_FOREGROUND=red
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION='%B>'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VICMD_CONTENT_EXPANSION='%B<'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIVIS_CONTENT_EXPANSION='%B<'
  typeset -g POWERLEVEL9K_PROMPT_CHAR_OVERWRITE_STATE=false
  typeset -g POWERLEVEL9K_VIRTUALENV_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_ANACONDA_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VIRTUALENV_SHOW_PYTHON_VERSION=
  typeset -g POWERLEVEL9K_VIRTUALENV_{LEFT,RIGHT}_DELIMITER=
  typeset -g POWERLEVEL9K_ANACONDA_SHOW_PYTHON_VERSION=
  typeset -g POWERLEVEL9K_ANACONDA_{LEFT,RIGHT}_DELIMITER=
  typeset -g POWERLEVEL9K_DIR_FOREGROUND=blue
  typeset -g POWERLEVEL9K_CONTEXT_ROOT_TEMPLATE='%F{foreground}in %F{red}%n%f at %F{magenta}%m%f'
  typeset -g POWERLEVEL9K_CONTEXT_TEMPLATE='%F{foreground}in %F{red}%n at %F{magenta}%m%f'
  typeset -g POWERLEVEL9K_CONTEXT_{DEFAULT,SUDO}_CONTENT_EXPANSION=
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_THRESHOLD=5
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_PRECISION=0
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FORMAT='d h m s'
  typeset -g POWERLEVEL9K_COMMAND_EXECUTION_TIME_FOREGROUND=cyan
  typeset -g POWERLEVEL9K_VCS_FOREGROUND=yellow
  typeset -g POWERLEVEL9K_VCS_LOADING_TEXT=
  typeset -g POWERLEVEL9K_VCS_MAX_SYNC_LATENCY_SECONDS=0
  typeset -g POWERLEVEL9K_VCS_{INCOMING,OUTGOING}_CHANGESFORMAT_FOREGROUND=red
  typeset -g POWERLEVEL9K_VCS_GIT_HOOKS=(vcs-detect-changes git-untracked git-aheadbehind)
  typeset -g POWERLEVEL9K_VCS_BRANCH_ICON=
  typeset -g POWERLEVEL9K_VCS_COMMIT_ICON='@'
  typeset -g POWERLEVEL9K_VCS_{STAGED,UNSTAGED,UNTRACKED}_ICON=$'\b'
  typeset -g POWERLEVEL9K_VCS_DIRTY_ICON='*'
  typeset -g POWERLEVEL9K_VCS_INCOMING_CHANGES_ICON='⇣'
  typeset -g POWERLEVEL9K_VCS_OUTGOING_CHANGES_ICON='⇡'
  typeset -g POWERLEVEL9K_VCS_{COMMITS_AHEAD,COMMITS_BEHIND}_MAX_NUM=1
  typeset -g POWERLEVEL9K_VCS_CONTENT_EXPANSION='${P9K_CONTENT/⇣* ⇡/⇣⇡}'
  typeset -g POWERLEVEL9K_TRANSIENT_PROMPT=off
  typeset -g POWERLEVEL9K_INSTANT_PROMPT=off
  typeset -g POWERLEVEL9K_DISABLE_HOT_RELOAD=true
}
(( ${#p10k_config_opts} )) && setopt ${p10k_config_opts[@]}
'builtin' 'unset' 'p10k_config_opts'
