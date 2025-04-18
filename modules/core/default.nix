{ inputs, ... }:

{
  imports = [
    ./boot.nix
    ./flatpak.nix
    ./fonts.nix
    ./greetd.nix
    ./hardware.nix
    ./home-manager.nix
    ./network.nix
    ./nh.nix
    ./nvidia.nix
    ./packages.nix
    ./security.nix
    ./services.nix
    ./steam.nix
    ./stylix.nix
    ./system.nix
    ./user.nix
    ./zram.nix
    inputs.stylix.nixosModules.stylix
  ];
}
