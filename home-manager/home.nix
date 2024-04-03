{ config, pkgs, ... }:

{
  home.username = "totto2727";
  home.homeDirectory = "/home/totto2727";

  home.stateVersion = "23.11"; # Please read the comment before changing.

  home.packages = [ ];

  home.file = {
    # # Building this configuration will create a copy of 'dotfiles/screenrc' in
    # # the Nix store. Activating the configuration will then make '~/.screenrc' a
    # # symlink to the Nix store copy.
    # ".screenrc".source = dotfiles/screenrc;

    # # You can also set the file content immediately.
    # ".gradle/gradle.properties".text = ''
    #   org.gradle.console=verbose
    #   org.gradle.daemon.idletimeout=3600000
    # '';
  };

  home.sessionVariables = {
    SSH_AUTH_SOCK = "$XDG_RUNTIME_DIR/ssh-agent.socket";
    EDITOR = "nvim";
  };

  programs.home-manager.enable = true;
  programs.zsh.enable = true;
  programs.starship.enable = true;
  programs.zoxide.enable = true;

  home.shellAliases = {
    VI = "nvim";
    ll = "ls -al";
    dev = "nix develop -c $SHELL";
  };
}
