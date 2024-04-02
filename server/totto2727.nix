{ config, pkgs, ... }:

{
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;

  home.username = "totto2727";
  home.homeDirectory = "/home/totto2727";

  home.packages = with pkgs; [ 
    neovim
  ];

  programs.zsh = {
    enable = true;
  };
}
