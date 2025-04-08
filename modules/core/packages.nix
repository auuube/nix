{ pkgs, inputs, system, ... }:

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
    nautilus
    loupe
    amberol
    obs-studio
    vesktop
    spotify
    prismlauncher

    # flake packages
    inputs.zen-browser.packages."${system}".default

    # cli utils
    fzf
    ripgrep
    superfile
    neovim
    gcc
  ];
}
