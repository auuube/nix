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
    inputs.zen-browser.packages."${system}".default
    obs-studio
    vesktop
    spotify
    prismlauncher

    # cli utils
    fzf
    ripgrep
    superfile
    neovim
    tree
    gh
    gcc
  ];
}
