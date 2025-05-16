{ pkgs, ... }:

{
  stylix = {
    enable = true;

    image = ../../wallpapers/bliss.jpg;
    polarity = "dark";

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };
  };
}
