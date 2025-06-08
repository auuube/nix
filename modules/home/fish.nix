{ pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
    enableFishIntegration = true;
  };

  programs.fish = {
    enable = true;

    shellAbbrs = {
      v = "nvim";
      c = "clear";  

      # nh
      sw = "nh os switch";
      upd = "nh os switch --update";
    };

    plugins = [
      { 
        name = "tide";
        src = pkgs.fishPlugins.tide.src;
      }
    ];

    interactiveShellInit = ''
      set -g fish_greeting
    '';
  };
}
