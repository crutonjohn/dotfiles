# fix for password-protected GPG keys when signing git commits
set -gx GPG_TTY (tty)
