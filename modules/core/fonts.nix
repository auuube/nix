{ pkgs, ... }:

{
  fonts = {
    enableDefaultPackages = true;
    packages = with pkgs; [
      inter
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-color-emoji
      nerd-fonts.fira-code
      nerd-fonts.jetbrains-mono
      material-symbols
    ];

    fontconfig = {
      defaultFonts = {
        serif = [ "Noto Serif" ];
        sansSerif = [
          "Inter"
          "Noto Sans"
          "Noto Sans Thai"
        ];
        monospace = [ "JetBrainsMono Nerd Font" ];
      };
    };
  };
}
