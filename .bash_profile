# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.dotfiles/.{path,bash_prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

. ~/.dotfiles/.bash_prompt

# Show git branch
function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/[\1]/'
}

# Show hg branch
function parse_hg_branch {
  if [ "$(hg root 2> /dev/null)" ]; then
    printf "[$(hg branch)]"
  fi
}

# Setting up locale
export LANG=en_US.UTF-8
unset LC_ALL

# Set the colored prompt.
CODE_RED=$'\[\033[0;31m\]'
CODE_GREEN=$'\[\033[0;32m\]'
CODE_YELL=$'\[\033[0;33m\]'
CODE_BLUE=$'\[\033[0;34m\]'
CODE_NORM=$'\[\033[m\]'
CODE_GRAY=$'\[\033[1;36m\]'
PRUSER="\u"
PRTERM=":\l "
PREXIT="${CODE_YELL}\$EXITCODE${CODE_NORM}"
RPROMPT="$"
if [ "$EUID" = "0" ]; then
  PRUSER="${CODE_RED}\u${CODE_NORM}"
  PRPROMPT="${CODE_RED}#${CODE_NORM}";
fi
    
TITLEBAR="\[\033]0;\w\007\]"
PSTRING=$PREXIT$TITLEBAR${CODE_GREEN}$PRPROMPT${CODE_NORM}

PS1="${CODE_GRAY}\w${CODE_YELL}\$(parse_git_branch)${CODE_RED}\$(parse_hg_branch) ${CODE_NORM}${TITLEBAR}${PSTRING}"

export PS1
export CLICOLOR=1
export EDITOR=/usr/bin/vim

# Set architecture flags
export ARCHFLAGS="-arch x86_64"

# Adding needed elements to PATH
export PATH=/usr/local/mysql/bin:$PATH

# Adding the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Homebrew
export PATH=/usr/local/share/python:/usr/local/bin:/usr/local/sbin:${PATH}

# NPM
export PATH=/usr/local/share/npm/bin:${PATH}

# Local bin
export PATH=/Users/asilachev/bin:${PATH}

# virtualenvwrapper related
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
export VIRTUAL_ENV_DISABLE_PROMPT=1
source /usr/local/bin/virtualenvwrapper.sh

# pip should only run if there is a virtualenv currently activated
export PIP_REQUIRE_VIRTUALENV=true
