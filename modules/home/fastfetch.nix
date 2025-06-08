{
  programs.fastfetch = {
    enable = true;

    settings = {
      display = {
        separator = " ➜  ";
      };

      modules = [
        "break"
        {
          type = "os";
          key = "OS   "; 
        }
        {
          type = "kernel";
          key = " ├  ";
        }
        {
          type = "packages";
          key = " ├ 󰏖 ";
        }
        {
          type = "shell";
          key = " └  ";
        }
        "break"
        {
          type = "wm";
          key = "WM   ";
        }
        {
          type = "wmtheme";
          key = " ├ 󰉼 ";
        }
        {
          type = "icons";
          key = " ├ 󰀻 ";
        }
        {
          type = "cursor";
          key = " ├  ";
        }
        {
          type = "terminal";
          key = " ├  ";
        }
        {
          type = "terminalfont";
          key = " └  ";
        }
        "break"
        {
          type = "host";
          format = "{5} {1} Type {2}";
          key = "PC   ";
        }
        {
          type = "cpu";
          format = "{1} ({3}) @ {7} GHz";
          key = " ├  ";
        }
        {
          type = "gpu";
          format = "{1} {2} @ {12} GHz";
          key = " ├ 󰢮 ";
        }
        {
          type = "memory";
          key = " ├  ";
        }
        {
          type = "disk";
          key = " ├ 󰋊 ";
        }
        {
          type = "monitor";
          key = " └  ";
        }
        "break"
        {
          type = "uptime";
          key = "   Uptime   ";
        }
      ];
    };
  };
}


