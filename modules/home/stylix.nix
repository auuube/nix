{ pkgs, inputs, ... }: {
  imports = [ inputs.stylix.homeManagerModules.stylix ];

  stylix = {
    enable = true;

    image = ../../wallpapers/bliss.jpg;
    polarity = "dark";

    targets = {
      hyprland.enable = false;
      hyprlock.enable = false;
      ghostty.enable = false;
    };

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };

    fonts = {
      monospace = {
        name = "JetBrains Mono";
        package = pkgs.jetbrains-mono;
      };
      sansSerif = {
        name = "Noto Sans";
        package = pkgs.noto-fonts;
      };
      serif = {
        name = "Noto Serif";
        package = pkgs.noto-fonts;
      };
    };

    iconTheme = {
      enable = true;
      package = pkgs.adwaita-icon-theme;
      dark = "Adwaita";
    };
  };
}
