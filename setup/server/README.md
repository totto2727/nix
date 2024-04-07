# nix

## install

- desktop: gnome
- timezome: Asia/Tokyo
- keyboard layout: US
- language: English(US)
- user: any

## initialize NixOS

```bash
curl https://raw.githubusercontent.com/totto2727/nix/main/setup/server/configuration.nix | sudo tee /etc/nixos/configuration.nix
sudo nixos-rebuild switch

curl https://raw.githubusercontent.com/totto2727/nix/main/setup/server/sky-barium1/flake.nix | sudo tee /etc/nixos/flake.nix
sudo nixos-rebuild switch
```
