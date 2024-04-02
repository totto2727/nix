# nix

## install

- desktop: gnome
- timezome: Asia/Tokyo
- keyboard layout: US
- language: English(US)
- user: any

## initialize

```bash
curl https://raw.githubusercontent.com/totto2727/nix/main/server/configuration.nix | sudo tee /etc/nixos/configuration.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/flake.nix | sudo tee /etc/nixos/flake.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/totto2727.nix | sudo tee /etc/nixos/totto2727.nix

sudo nixos-rebuild switch
sudo nixos-rebuild switch
```

## update

```bash
curl https://raw.githubusercontent.com/totto2727/nix/main/server/configuration.nix | sudo tee /etc/nixos/configuration.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/flake.nix | sudo tee /etc/nixos/flake.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/totto2727.nix | sudo tee /etc/nixos/totto2727.nix

sudo nixos-rebuild switch
```
