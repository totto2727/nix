#!/bin/bash

echo $(which zsh) | sudo tee -a /etc/shells
chsh -s $(which zsh)

echo "require reboot"
