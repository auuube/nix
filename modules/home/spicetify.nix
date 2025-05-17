{ pkgs, inputs, system, ... }:

{
  imports = [ inputs.spicetify-nix.homeManagerModules.spicetify ];

  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${system};
  in {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      beautifulLyrics
      volumePercentage
    ];
    theme = spicePkgs.themes.text;
  };
}
