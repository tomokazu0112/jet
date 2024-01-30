#!/bin/sh

# Loaded at shell startup by `source ~/.ashrc`
cat << 'EOF' >> ~/.ashrc
# alias:common
alias ll="ls -ahl"

# alias:rails
alias rs="rails s"
alias rc="rails c"
alias be="bundle exec"
alias bi="bundle install"
alias bers="bundle exec rails s"
alias berc="bundle exec rails c"
alias berdm="bundle exec rails db:migrate"
alias berdr="bundle exec rails db:rollback"
EOF
