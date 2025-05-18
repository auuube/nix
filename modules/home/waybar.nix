{ pkgs, lib, config, ... }:

{
  programs.waybar = {
    enable = true;
    package = pkgs.waybar;
    settings = [
      {
        layer = "top";
        position = "top";
        modules-left = [
          "hyprland/window"
        ];
        modules-center = ["hyprland/workspaces"];
        modules-right = [
          "tray"
          "pulseaudio"
          "network"
          "clock"
          "battery"
          "custom/wlogout"
          "custom/notification"
        ];

        "hyprland/workspaces" = {
          format = "{name}";
          format-icons = {
            default = " ";
            active = " ";
            urgent = " ";
          };
          on-scroll-up = "hyprctl dispatch workspace e-1";
          on-scroll-down = "hyprctl dispatch workspace e+1";
        };
        "clock" = {
          format = "{:L%H:%M}";
          tooltip = true;
          tooltip-format = "<big>{:%A, %d.%B %Y }</big>\n<tt><small>{calendar}</small></tt>";
        };
        "hyprland/window" = {
          max-length = 30;
          separate-outputs = false;
        };
        "network" = {
          format-icons = [ "󰤯" "󰤟" "󰤢" "󰤥" "󰤨" ];
          format-ethernet = " {bandwidthDownOctets}";
          format-wifi = "{icon} {signalStrength}%";
          format-disconnected = "󰤮";
          tooltip = false;
        };
        "tray" = {
          spacing = 12;
        };
        "pulseaudio" = {
          format = "{icon} {volume}% {format_source}";
          format-bluetooth = "{volume}% {icon} {format_source}";
          format-bluetooth-muted = " {icon} {format_source}";
          format-muted = " {format_source}";
          format-source = " {volume}%";
          format-source-muted = "";
          format-icons = {
            headphone = "";
            hands-free = "";
            headset = "";
            phone = "";
            portable = "";
            car = "";
            default = [
              ""
              ""
              ""
            ];
          };
          on-click = "sleep 0.1 && pavucontrol";
        };
        "custom/wlogout" = {
          tooltip = false;
          format = "⏻";
          on-click = "sleep 0.1 && wlogout";
        };
        "custom/notification" = {
          tooltip = false;
          format = "{icon} {}";
          format-icons = {
            notification = "<span foreground='red'><sup></sup></span>";
            none = "";
            dnd-notification = "<span foreground='red'><sup></sup></span>";
            dnd-none = "";
            inhibited-notification = "<span foreground='red'><sup></sup></span>";
            inhibited-none = "";
            dnd-inhibited-notification = "<span foreground='red'><sup></sup></span>";
            dnd-inhibited-none = "";
          };
          return-type = "json";
          exec-if = "which swaync-client";
          exec = "swaync-client -swb";
          on-click = "sleep 0.1 && swaync-client -t";
          escape = true;
        };
        "battery" = {
          states = {
            warning = 30;
            critical = 15;
          };
          format = "{icon} {capacity}%";
          format-charging = "󰂄 {capacity}%";
          format-plugged = "󱘖 {capacity}%";
          format-icons = [ "󰁺" "󰁻" "󰁼" "󰁽" "󰁾" "󰁿" "󰂀" "󰂁" "󰂂" "󰁹" ];
          on-click = "";
          tooltip = false;
        };
      }
    ];
    style = lib.concatStrings [
      ''
        * {
          font-family: JetBrainsMono Nerd Font Mono;
          font-size: 14px;
          border-radius: 0px;
          border: none;
          min-height: 0px;
        }
        window#waybar {
          background: #${config.lib.stylix.colors.base00};
          color: #${config.lib.stylix.colors.base05};
        }
        #workspaces button {
          padding: 0px 5px;
          background: transparent;
          color: #${config.lib.stylix.colors.base04};
        }
        #workspaces button.active {
          color: #${config.lib.stylix.colors.base08};
        }
        #workspaces button:hover {
          color: #${config.lib.stylix.colors.base08};
        }
        tooltip {
          background: #${config.lib.stylix.colors.base00};
          border: 1px solid #${config.lib.stylix.colors.base05};
          border-radius: 12px;
        }
        tooltip label {
          color: #${config.lib.stylix.colors.base05};
        }
        #window {
          padding: 0px 10px;
        }
        #pulseaudio {
          padding: 0px 10px;
          background: #${config.lib.stylix.colors.base04};
          color: #${config.lib.stylix.colors.base00};
        }
        #network, #battery,
        #custom-notification, #custom-wlogout {
          background: #${config.lib.stylix.colors.base0F};
          color: #${config.lib.stylix.colors.base00};
          padding: 0px 10px;
        }
        #tray {
          background: #${config.lib.stylix.colors.base02};
          color: #${config.lib.stylix.colors.base00};
          padding: 0px 10px;
        }
        #clock {
          font-weight: bold;
          padding: 0px 10px;
          color: #${config.lib.stylix.colors.base00};
          background: #${config.lib.stylix.colors.base0E};
        }
      ''
    ];
  };
}

