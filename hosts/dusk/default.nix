{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./hostpkgs.nix
    ../../modules/core
  ];
}
