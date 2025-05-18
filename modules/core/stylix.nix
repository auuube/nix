{ pkgs, ... }:

{
  stylix = {
    enable = true;

    image = ../../wallpapers/sky.png;
    polarity = "dark";

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };
  };
}
