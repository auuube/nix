{
  programs.ghostty = {
    enable = true;
    enableFishIntegration = true;
    settings = {
      font-family = "Fira Code";
      font-size = 11;
      theme = "Kanagawa Wave";
      background-opacity = 0.9;
      background-blur = 30;
      font-thicken = false;
      font-feature = ["ss04" "ss01"];
      bold-is-bright = false;
      adjust-box-thickness = 1;
      cursor-style = "bar";
      cursor-style-blink = false;
      copy-on-select = false;
      confirm-close-surface = false;
      adjust-cursor-thickness = 1;
      mouse-hide-while-typing = true;
      window-padding-x = 4;
      window-padding-y = 6;
      window-padding-balance = true;
      title = "GhosTTY";
      gtk-single-instance = true;
    };
  };
}

