{ pkgs, inputs, system, ... }:

{
  nixpkgs.config.allowUnfree = true;

  environment.systemPackages = with pkgs; [
    # desktop apps
    inputs.zen-browser.packages."${system}".default
    nautilus
    obs-studio
    vesktop
    spotify
    bottles
    prismlauncher

    # cli utils
    fzf
    ripgrep
    superfile
    neovim
    tree
    gh
    gcc

    # miscs
    loupe
    hyprshot
    wl-clipboard
  ];
}
