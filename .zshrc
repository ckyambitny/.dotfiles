# Set theme
ZSH_THEME=""

plugins=(git git-completion colored-man colorize github jira pip brew osx zsh-syntax-highlighting)

# Add env.sh
source ~/.env.sh

autoload -U promptinit; promptinit

# optionally define some options
PURE_CMD_MAX_EXEC_TIME=10

prompt pure