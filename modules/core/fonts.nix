{ pkgs, ... }:

{
  fonts = {
    packages = with pkgs; [
      noto-fonts
      noto-fonts-cjk-sans
      font-awesome
      material-icons
      fira-code
      fira-code-symbols
    ];
  };
}

