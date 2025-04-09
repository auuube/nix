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
    obs-studio
    vesktop
    prismlauncher

    # flake packages
    inputs.zen-browser.packages."${system}".default

    # cli utils
    fzf
    ripgrep
    superfile
    neovim
    gcc
    ffmpeg-full
  ];
}
