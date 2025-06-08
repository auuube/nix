{
  description = "my nixos config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    stylix.url = "github:danth/stylix";
    spicetify-nix.url = "github:Gerg-L/spicetify-nix";
    zen-browser.url = "github:0xc000022070/zen-browser-flake";
  };

  outputs = inputs @ { self, nixpkgs, home-manager, ... }:
  let
    # configs
    system = "x86_64-linux";
    homeStateVersion = "25.05";
    user = "aube";
    hosts = [
      { hostname = "dusk"; stateVersion = "25.05"; }
    ];

    # create nixosSystem function
    makeSystem = { hostname, stateVersion }: nixpkgs.lib.nixosSystem {
      system = system;
      specialArgs = {
        inherit inputs stateVersion homeStateVersion system hostname user;
      };

      modules = [
        ./hosts/${hostname}
      ];
    };
  in
  {
    nixosConfigurations = nixpkgs.lib.foldl' (configs: host:
      configs // {
        "${host.hostname}" = makeSystem {
          inherit (host) hostname stateVersion;
        };
      }) {} hosts;
  };
}

