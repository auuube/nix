{ pkgs, config, ... }:

{
  programs = {
    rofi = {
      enable = true;
      package = pkgs.rofi-wayland;
      extraConfig = {
        modi = "drun,filebrowser";
        show-icons = true;
        icon-theme = "Papirus";
        font = "JetBrainsMono Nerd Font Mono 12";
        drun-display-format = "{icon} {name}";
        display-drun = "";
      };

      theme = let
        inherit (config.lib.formats.rasi) mkLiteral;
      in {
        "window" = {
          transparency = "real";
          width = mkLiteral "450px";
          enabled = true;
          border-radius = mkLiteral "8px";
          border = mkLiteral "2px solid";
          padding = mkLiteral "12px";
        };

        "listview" = {
          enabled = true;
          lines = 7;
          columns = 1;
          cycle = false;
          scrollbar = false;
          fixed-height = true;
          fixed-columns = true;
        };

        "inputbar" = {
          children = [ "prompt" "entry" ];
          spacing = mkLiteral "10px";
        };

        "entry" = {
            placeholder = "Search Apps";
        };

        "mainbox" = {
          children = [ "inputbar" "listview" "message" ];
          spacing = mkLiteral "10px";
          margin = mkLiteral "0";
          padding = mkLiteral "10px";
        };

        "element" = {
          spacing = mkLiteral "10px";
          margin = mkLiteral "0";
          padding = mkLiteral "8px";
          border = mkLiteral "0px solid";
          border-radius = mkLiteral "8px";
        };

        "element-icon" = {
          size = mkLiteral "24px";
        };
      };
    };
  };
}

