#!/usr/bin/env bash

# clone and install patched nerdfonts to work with airline and powerline symbols locally
nerdFontsInstall() {
  echo "Installing Nerd Fonts..."
  mkdir -p "${HOME}/.local/share/fonts"

  git clone --depth 1 https://github.com/ryanoasis/nerd-fonts.git "${HOME}/Workspace/misc/nerd-fonts"
  cd "${HOME}/Workspace/misc/nerd-fonts" || return
  ./install.sh Inconsolata
  ./install.sh InconsolataGo
  ./install.sh Iosevka
  ./install.sh DroidSansMono
}
