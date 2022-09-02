{
  description = "A very basic flake";

  outputs = { self, nixpkgs }: 
let
      supportedSystems = [ "x86_64-linux" "aarch64-linux" ];
      forAllSystems = nixpkgs.lib.genAttrs supportedSystems;
          nixpkgsFor = forAllSystems (system: import nixpkgs { inherit system; });
      in {

    defaultPackage.x86_64-linux =
      with import nixpkgs { system = "x86_64-linux"; };
      stdenv.mkDerivation {
        name = "german";
        src = self;
        installPhase = "mkdir -p $out/bin; install main.sh $out/bin/german";
      };
      apps = forAllSystems (system: {
  default = {
      type = "app";
      program = "${self.defaultPackage.${system}}/bin/german";
      #package = with nixpkgs; [ xdotool ]; 
      #buildInputs = with nixpkgs; [ xdotool ]; 
  };
});

devShells = forAllSystems (system:
  let pkgs = nixpkgsFor.${system};
  in {
    default = pkgs.mkShell { 
      buildInputs = with nixpkgs; [ self.defaultPackage.${system} pkgs.xdotool pkgs.dmenu ];
    };
  });
  };
  }

