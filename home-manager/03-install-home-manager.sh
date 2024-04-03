#!/bin/bash

source VERSION.sh

nix run home-manager/${HOME_MANAGER} -- init . --switch
