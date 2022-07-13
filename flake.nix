{
  inputs = {
    nixpkgs.url = "nixpkgs/nixos-unstable";
    utils = {
      url = "github:numtide/flake-utils";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    preludeSrc = {
      url = "github:dhall-lang/dhall-lang/v20.0.0";
      flake = false;
    };
  };

  outputs = { self, nixpkgs, utils, preludeSrc }:
    utils.lib.eachDefaultSystem (system:
      let pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        packages.lamwyrhta = pkgs.stdenv.mkDerivation {
          pname = "lamwyrhta";
          version = "1.0.0";
          src = ./.;

          buildInputs = [ pkgs.dhall ];

          buildPhase = ''
            export DHALL_PRELUDE=${preludeSrc}/Prelude/package.dhall
            buildDir=$(pwd)
            dhall text --file $src/template.dhall --output $buildDir/index.html
            sed -i 's|DRVOUT|${placeholder "out"}|g' $buildDir/index.html
          '';

          installPhase = ''
            mkdir -p $out
            cp -rf main.css $out
            cp -rf img $out
            cp -rf index.html $out
          '';
        };

        packages.default = self.packages.${system}.lamwyrhta;
      }
    );
}
