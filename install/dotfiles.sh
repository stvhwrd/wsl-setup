#!/bin/bash
#
# Install Zsh and set as default shell
# Install dotfiles and configure git

source ./install/utils.sh
keep_sudo_alive

# Install prezto
git clone --recursive https://github.com/stvhwrd/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Install some external plugins:
# git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# git clone https://github.com/zsh-users/zsh-completions ~/.prezto/custom/plugins/zsh-completions
# git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.zsh/zsh-syntax-highlighting

/bin/zsh -c  \
"setopt EXTENDED_GLOB && for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done"

# Set Zsh as your default shell:
chsh -s /bin/zsh

# Move/replace setting files to /Home
replace "gitconfig"         ".gitconfig"
replace "gitignore_global"  ".gitignore_global"
replace "tmux.conf"         ".tmux.conf"
replace "vimrc"             ".vimrc"

# Git configs
e_header "Configure your Git settings: "
vim ${HOME}/.gitconfig

# Finish
e_success "Dotfiles update complete."
