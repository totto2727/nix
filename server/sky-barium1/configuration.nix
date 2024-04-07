{ config, pkgs, ... }:

{
  imports =
    [ 
      ./hardware-configuration.nix
    ];

  # Bootloader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  # Enable networking
  networking.networkmanager.enable = true;

  # Enable firewalld
  networking.firewall.enable = true;

  # Set your time zone.
  time.timeZone = "Asia/Tokyo";

  # Select internationalisation properties.
  i18n.defaultLocale = "en_US.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ja_JP.UTF-8";
    LC_IDENTIFICATION = "ja_JP.UTF-8";
    LC_MEASUREMENT = "ja_JP.UTF-8";
    LC_MONETARY = "ja_JP.UTF-8";
    LC_NAME = "ja_JP.UTF-8";
    LC_NUMERIC = "ja_JP.UTF-8";
    LC_PAPER = "ja_JP.UTF-8";
    LC_TELEPHONE = "ja_JP.UTF-8";
    LC_TIME = "ja_JP.UTF-8";
  };

  # Enable the X11 windowing system.
  services.xserver.enable = true;

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;
  services.xserver.displayManager.gdm.autoSuspend = false;

  # Configure keymap in X11
  services.xserver = {
    layout = "us";
    xkbVariant = "";
  };

  # Configure sshd
  services.openssh = {
    enable = true;
    openFirewall = true;
    settings = {
      X11Forwarding = true;
      PermitRootLogin = "no"; # disable root login
      PasswordAuthentication = false; # disable password login
    };
  };

  system.stateVersion = "23.11";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  networking.hostName = "sky-barium1";

  users.mutableUsers = false;
  users.users.totto2727 = {
    hashedPassword = "$6$Fv4iD1gjAeYSmwRi$albtFuthGyIu6Ze8wMtVVbnJo0t7oMFXUNho.LEXMp8HloxcRZE8syNNSkx2mBl1JXlHv0blNsQ8fC73J6kJE.";
    isNormalUser = true;
    description = "totto2727";
    extraGroups = [ "networkmanager" "wheel" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIFZIpTFFowBxrPTOS+2qsc0lvn38Yzk1MbZpw18ohvaV"
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIHvtQSg0rgO51SueoWR40NLN6mWpaAPcIupmctYabhXW"
    ];
  };

  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    vim
    git
  ];

  virtualisation = {
    docker = {
      enable = true;
      rootless = {
        enable = true;
        setSocketVariable = true; # $DOCKER_HOSTを設定
      };
    };
  };

  age.secrets.github-token.file = ./secret/github-token.age;

  services.github-runners = {
    nix-sky-barium1 = {
      enable = true;
      name = "nix-sky-barium1";
      url = "https://github.com/totto2727/nix";
      tokenFile = config.age.secrets.github-token.path;
    };
  };
}
