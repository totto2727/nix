# nix

## install

- desktop: gnome
- timezome: Asia/Tokyo
- keyboard layout: US
- language: English(US)
- user: any

## initialize

```bash
sudo mkdir /etc/nixos/secret/

curl https://raw.githubusercontent.com/totto2727/nix/main/server/sky-barium1/configuration.nix | sudo tee /etc/nixos/configuration.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/sky-barium1/flake.nix | sudo tee /etc/nixos/flake.nix
curl https://raw.githubusercontent.com/totto2727/nix/main/server/sky-barium1/secret/github-token.age | sudo tee /etc/nixos/secret/github-token.age

sudo nixos-rebuild switch
```
