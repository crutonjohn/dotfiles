# fix for password-protected GPG keys when signing git commits
set -gx GPG_TTY (tty)
# direnv setup
direnv hook fish | source
# direnv mode
set -g direnv_fish_mode disable_arrow
