{ pkgs, inputs, ... }:

{
  nixpkgs.config.allowUnfree = true;

  programs = {
    hyprland = {
      enable = true;
      withUWSM = true;
    };
  };

  environment.systemPackages = with pkgs; [
    # desktop apps
    vicinae
    nautilus
    loupe
    vesktop
    prismlauncher

    # flake packages
    inputs.zen-browser.packages.${pkgs.stdenv.hostPlatform.system}.default
    inputs.awww.packages.${pkgs.stdenv.hostPlatform.system}.awww
    inputs.matugen.packages.${pkgs.stdenv.hostPlatform.system}.default

    # cli utils
    fzf
    ripgrep
    superfile
    neovim
    lazygit
    nitch

    # miscs
    jre25_minimal
    nodejs
    nixd
    nil
    gcc
  ];
}
