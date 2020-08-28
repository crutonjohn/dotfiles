#!/bin/bash

REPO_ROOT=$(git rev-parse --show-toplevel)

FILES_ROOT="${REPO_ROOT}/files/"

DOTFILE_ROOT="${HOME}/.config"

mkdir ${DOTFILE_ROOT}

need() {
    which "$1" &>/dev/null || die "Binary '$1' is missing but required"
}

xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

need brew

binstall() {
  brew install "$@"
}

finstall() {
  /usr/local/bin/fish fisher add "$@"
}

brew tap homebrew/cask-fonts
brew cask install font-hack-nerd-font

binstall starship
binstall fish
binstall rsync
binstall rclone
binstall fluxctl
binstall gpg
binstall telnet
binstall kubectl
binstall kubeseal
binstall git
binstall gnu-sed
binstall git-crypt
binstall rsync
binstall kns
binstall ansible
binstall asciinema
binstall fzf
binstall python
binstall pip

finstall evanlucas/fish-kubectl-completions
finstall jethrokuan/fzf
finstall franciscolourenco/done
finstall laughedelic/pisces

rsync -arzv ${FILES_ROOT} ${DOTFILE_ROOT}
