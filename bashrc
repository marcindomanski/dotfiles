source ~/.bash/variables
source ~/.bash/aliases
source ~/.bash/config
source ~/.bash/completions

# use .localrc for settings specific to one system
if [ -f ~/.localrc ]; then
  source ~/.localrc
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
