{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    gitignore = {
      url = "github:hercules-ci/gitignore.nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    preludeSrc = {
      url = "github:dhall-lang/dhall-lang/v20.0.0";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, gitignore, preludeSrc }:
    let
      pkgs = nixpkgs.legacyPackages.x86_64-linux;
      inherit (gitignore.lib) gitignoreSource;
    in
    {
      packages.x86_64-linux.lamwyrhta = pkgs.stdenv.mkDerivation {
        pname = "lamwyrhta";
        version = "0.1.0";
        src = gitignoreSource ./.;

        buildInputs = [ pkgs.dhall ];

        buildPhase = ''
          export DHALL_PRELUDE=${preludeSrc}/Prelude/package.dhall
          echo $DHALL_PRELUDE
          buildDir=$(pwd)
          dhall text --file $src/template.dhall --output $buildDir/index.html
        '';

        installPhase = ''
          mkdir -p $out
          cp -rf main.css $out
          cp -rf img $out
          cp -rf index.html $out
        '';
      };

      packages.x86_64-linux.default = self.packages.x86_64-linux.lamwyrhta;

      devShell.x86_64-linux = pkgs.mkShell {
        buildInputs = with pkgs; [ dhall ];
      };
    };
}
