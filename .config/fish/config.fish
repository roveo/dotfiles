# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Customize Oh My Fish configuration path.
#set -gx OMF_CONFIG "/Users/roveo/.config/omf"

# Load oh-my-fish configuration.
source $OMF_PATH/init.fish


alias nv=nvim
alias v=nvim
alias o='open (fzf)'
alias sden='subliminal download -l en'
alias sc=slackcat
alias r=ranger
alias g=git

set -U fish_user_paths /Users/roveo/bin
test -e ~/.pass; and bass source ~/.pass
