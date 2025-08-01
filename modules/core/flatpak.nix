{ pkgs, ... }:

{
  services = {
    flatpak = {
      enable = true; # enable flatpak
      update.onActivation = true; # update on rebuild switch

      packages = [
      ];
    };
  };
}

