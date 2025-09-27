{
  description = "WebXR AR Audio Waveform Visualizer";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { self, nixpkgs, flake-utils }:
    flake-utils.lib.eachDefaultSystem (system:
      let
        pkgs = nixpkgs.legacyPackages.${system};
      in
      {
        devShells.default = pkgs.mkShell {
          buildInputs = with pkgs; [
            git
            gh
            netlify-cli
          ];

          shellHook = ''
            echo "WebXR AR Audio Waveform Visualizer development environment"
            echo "Available commands:"
            echo "  git - Git version control"
            echo "  gh - GitHub CLI"
            echo "  netlify - Netlify CLI"
          '';
        };
      });
}