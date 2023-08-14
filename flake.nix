{
    description = "A template that shows all standard flake outputs";

    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.05";

        home-manager = {
            url = "github:nix-community/home-manager/release-23.05";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        agenix = {
            url = "github:ryantm/agenix";
            inputs.darwin.follows = "";
        };
    };

    outputs = inputs@{ self, nixpkgs, home-manager, agenix, ... }: {
        nixosConfigurations = {
            "tp-p15v" = nixpkgs.lib.nixosSystem {
                system = "x86_64-linux";

                modules = [
                    ./hosts/tp-p15v

                    home-manager.nixosModules.home-manager
                    {
                        home-manager.useGlobalPkgs = true;
                        home-manager.useUserPackages = true;

                        home-manager.users.lukas = import ./home;
                    }

                    agenix.nixosModules.default

                    {
                        environment.systemPackages = [
                            agenix.packages.x86_64-linux.default
                        ];
                    }
                ];
            };
        };
    };
}
