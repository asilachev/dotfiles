# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# List all files colorized in long format, including dot files
alias ll='ls -laFh'

# List only directories
alias lsd="ls -lFh | grep --color=never '^d'"

# Get week number
alias week='date +%V'

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# General
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete" # Recursively delete `.DS_Store` files
alias crypto='curl rate.sx' # Get crypto prices

# Utility
alias net="ping ya.ru | grep -E --only-match --color=never '[0-9\.]+ ms'"                # check connection
alias history-stat="history 0 | awk '{print \$2}' | sort | uniq -c | sort -n -r | head"
alias ba="bash"

alias cpu='top -o cpu'   # CPU
alias mem='top -o rsize' # Memory

alias ungit="find . -name '.git' -exec rm -rf {} \;" # Remove git from a project

# Refresh plugins using Antibody
alias reload_plugins="antibody bundle < ~/.dotfiles/zsh/plugins.txt > ~/.dotfiles/zsh/zsh_plugins.sh"
