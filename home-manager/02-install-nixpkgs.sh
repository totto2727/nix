#!/bin/bash

source ./VERSION.sh

nix-channel --add "https://nixos.org/channels/${NIXPKGS_LINUX}" nixpkgs
nix-channel --update

