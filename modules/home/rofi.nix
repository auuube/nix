{ pkgs, ... }:

  programs.rofi = {
    enable = true;
    package = pkgs.rofi-wayland;
    extraConfig = {
      modi = "drun,filebrowser,run";
      show-icons = true;
      icon-theme = "Papirus";
      drun-display-format = "{icon} {name}";
      display-drun = "run: ";
    };
  };
}
