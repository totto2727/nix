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

sudo nixos-rebuild switch
```
