{ config, ... }:

let
  colors = config.lib.stylix.colors;
in
{
  programs.waybar = {
    enable = true;

    style = ''
      * {
        border: none;
        border-radius: 0;
        font-family: "JetBrainsMono NFM";
        padding: 0;
        margin: 0;
        min-width: 10px;
        background: transparent;
      }

      window.#waybar {
        min-width: 40px;
      }

      tooltip,
      #tray menu {
        background: alpha(#${colors.base00}, 0.999);
        border-radius: 8px;
        padding: 1px 2px;
      }

      #custom-separator {
        font-family: "Material Symbols Rounded";
        margin: -10px 0;
        font-size: 28px;
        color: #${colors.base05};
      }

      #top,
      #workspaces,
      #bottom {
        background: #${colors.base01};
        padding: 8px 0;
        border-radius: 0 16px 16px 0;
      }

      box.empty {
        font-size: 0;
        margin: 0;
        padding: 0;
      }

      #workspaces {
        min-width: 0;
        padding: 8px 14px;
        margin: 20px 0;
      }

      #workspaces button {
        font-size: 7px;
        color: transparent;
        background: #${colors.base05};
        transition: all 0.2s ease-in-out;
        min-width: 0;
        min-height: 0;
        border-radius: 9999px;
        margin: 3px 0;
      }

      #workspaces button.active {
        background: #${colors.base0D};
        min-height: 40px;
      }

      #bottom,
      #top {
        color: #${colors.base05};
        padding-right: 5px;
        padding-left: 5px;
      }

      #network {
        margin-bottom: 8px;
      }

      #bluetooth,
      #network {
        font-size: 18px;
      }

      #bluetooth.battery,

      #bluetooth,
      #network {
        font-family: "Material Symbols Rounded";
      }

      #bluetooth.battery.on {
        font-size: 0;
        margin: 0;
        padding: 0;
      }

      #tray,
      #network {
        margin-top: 8px;
      }
    '';

    settings = [
      {
        layer = "top";
        position = "left";
        orientation = "vertical";
        reload_style_on_change = true;
        modules-center = [
          "hyprland/workspaces"
          "group/bottom"
        ];

        "group/bottom" = {
          orientation = "inherit";
          modules = [
            "tray"
            "network"
            "bluetooth"
            "bluetooth#battery"
            "custom/separator"
            "clock"
          ];
        };

        "hyprland/workspaces" = {
          format = "{id}";
          all-outputs = true;
        };

        tray = {
          icon-size = 21;
          spacing = 10;
        };

        network = {
          format-wifi = "";
          format-disconnected = "";
          format-ethernet = "";
          format-icons = [
            ""
            ""
            ""
          ];
          tooltip = false;
        };

        bluetooth = {
          format-connected = "";
          format = "";
          format-off = "";
          tooltip = false;
        };

        "bluetooth#battery" = {
          format = "";
          format-connected-battery = "{device_battery_percentage}";
        };

        "custom/separator" = {
          format = "";
          tooltip = false;
        };

        clock = {
          format = "{:%H\n%M}";
          tooltip-format = "{:%a %b %d, %Y}";
        };
      }
    ];
  };
}
