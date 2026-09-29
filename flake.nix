{
  description = "blsd - screen border overlay controller";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    quickshell.url = "git+https://git.outfoxxed.me/quickshell/quickshell";
  };

  outputs = { self, nixpkgs, quickshell }:
    let
      systems = [ "x86_64-linux" "aarch64-linux" ];
      forEachSystem = nixpkgs.lib.genAttrs systems;
    in {
      packages = forEachSystem (system:
        let
          pkgs = nixpkgs.legacyPackages.${system};
          qs = quickshell.packages.${system}.default;
        in {
          default = pkgs.stdenvNoCC.mkDerivation {
            pname = "blsd";
            version = "0.1.0";
            src = ./.;

            nativeBuildInputs = [ pkgs.makeWrapper ];

            installPhase = ''
              runHook preInstall

              mkdir -p $out/bin $out/share/blsd
              install -m755 blsd $out/bin/blsd
              install -m644 shell.qml $out/share/blsd/shell.qml

              wrapProgram $out/bin/blsd \
                --prefix PATH : ${pkgs.lib.makeBinPath [ pkgs.jq pkgs.coreutils ]}

              makeWrapper ${qs}/bin/qs $out/bin/blsd-shell \
                --add-flags "-p $out/share/blsd/shell.qml"

              runHook postInstall
            '';
          };
        });
    };
}
