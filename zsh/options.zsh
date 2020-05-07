# History
HISTSIZE=10000 			# Lines of history to keep in memory for current session
HISTFILESIZE=10000 		# Number of commands to save in the file
SAVEHIST=10000 			# Number of history entries to save to disk
HISTFILE=~/.zsh_history 	# Where to save history to disk
HISTDUP=erase 			# Erase duplicates in the history file

# Options - `man zshoptions`
setopt append_history 		# Append history to the history file (no overwriting)
setopt complete_aliases		# Do not expand aliases _before_ completion has finished
setopt hist_ignore_all_dups 	# Ignore duplicates
setopt hist_reduce_blanks
setopt share_history 		# Share history across terminals
setopt inc_append_history 	# Immediately append to the history file, not just when a term is killed
setopt extended_glob 		# Use extended globbing syntax
setopt auto_cd 			# Auto change to a dir without typing cd

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'
export CLICOLOR=true

setopt NO_BG_NICE 		# Do not nice background tasks
setopt NO_HUP
setopt NO_LIST_BEEP
setopt LOCAL_OPTIONS 		# Allow functions to have local options
setopt LOCAL_TRAPS 		# Allow functions to have local traps
setopt HIST_VERIFY
setopt EXTENDED_HISTORY 	# Add timestamps to history
setopt PROMPT_SUBST
setopt CORRECT
setopt COMPLETE_IN_WORD
setopt IGNORE_EOF

bindkey '^[^[[D' backward-word
bindkey '^[^[[C' forward-word
bindkey '^[[5D' beginning-of-line
bindkey '^[[5C' end-of-line
bindkey '^[[3~' delete-char
bindkey '^?' backward-delete-char

export DYLD_LIBRARY_PATH=/usr/local/Cellar/openssl/1.0.2t/lib

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
