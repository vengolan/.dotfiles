# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH


export EDITOR=nvim
# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.



#########################TMUX Aliases###############################
# ta 	tmux attach -t 	Attach new tmux session to already running named session
# tad 	tmux attach -d -t 	Detach named tmux session
# ts 	tmux new-session -s 	Create a new named tmux session
# tl 	tmux list-sessions 	Displays a list of running tmux sessions
# tksv 	tmux kill-server 	Terminate all running tmux sessions
# tkss 	tmux kill-session -t 	Terminate named running tmux session
# tmux 	_zsh_tmux_plugin_run 	Start a new tmux session
# tmuxconf 	$EDITOR $ZSH_TMUX_CONFIG 	Open .tmux.conf file with an editor

# ZSH_TMUX_AUTOSTART 	Automatically starts tmux (default: false)
# ZSH_TMUX_AUTOSTART_ONCE 	Autostart only if tmux hasn't been started previously (default: true)
# ZSH_TMUX_AUTOCONNECT 	Automatically connect to a previous session if it exits (default: true)
# ZSH_TMUX_AUTOQUIT 	Automatically closes terminal once tmux exits (default: ZSH_TMUX_AUTOSTART)
# ZSH_TMUX_FIXTERM 	Sets $TERM to 256-color term or not based on current terminal support
# ZSH_TMUX_ITERM2 	Sets the -CC option for iTerm2 tmux integration (default: false)
# ZSH_TMUX_FIXTERM_WITHOUT_256COLOR 	$TERM to use for non 256-color terminals (default: screen)
# ZSH_TMUX_FIXTERM_WITH_256COLOR 	$TERM to use for 256-color terminals (default: screen-256color
# ZSH_TMUX_CONFIG 	Set the configuration path (default: $HOME/.tmux.conf)
# ZSH_TMUX_UNICODE 	Set tmux -u option to support unicode
# ZSH_TMUX_DEFAULT_SESSION_NAME 	Set tmux default session name when autostart is enabled
export ZSH_TMUX_AUTOSTART=true
export ZSH_TMUX_AUTOCONNECT=false
export ZSH_TMUX_AUTOQUIT=true
export ZSH_TMUX_CONFIG=$HOME/.tmux.conf

plugins=(git golang dnf docker docker-compose rust ripgrep fd fzf sudo vi-mode dotenv zsh-autosuggestions dirhistory tmux)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias 'l=exa'
alias 'll=exa -lh -F --icons'

source /usr/share/fzf/shell/key-bindings.zsh
export FZF_DEFAULT_COMMAND="fd . $HOME --hidden"
export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
export FZF_ALT_C_COMMAND="fd -t d . $HOME --hidden"

