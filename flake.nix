{
  description = "NixOS config";

  # Версия должна совпадать с установленной (проверь командой `nixos-version`).
  inputs.nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.t430i = nixpkgs.lib.nixosSystem {
      modules = [
        { nixpkgs.hostPlatform = "x86_64-linux"; }
        ./hosts/t430i/configuration.nix
        ./hosts/t430i/extra.nix
        ./modules/common.nix
        ./modules/gnome.nix
      ];
    };
  };
}
