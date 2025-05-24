{ pkgs, ... }:

{
  stylix = {
    enable = true;

    image = ../../wallpapers/space.jpg;
    polarity = "dark";

    cursor = {
      name = "DMZ-Black";
      size = 24;
      package = pkgs.vanilla-dmz;
    };
  };
}
