{ pkgs, ... }:

{
  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    shellAliases = {
      sv = "sudo nvim";
      v = "nvim";
      c = "clear";  

      # nh
      sw = "nh os switch";
      upd = "nh os switch --update";

      ".." = "cd ..";
    };

    plugins = [
      { 
        name = "powerlevel10k";
        src = pkgs.zsh-powerlevel10k;
        file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
      }
    ];

    initContent = ''
      source ~/.p10k.zsh
    '';
  };
}
