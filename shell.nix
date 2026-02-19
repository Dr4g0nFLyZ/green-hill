{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    nodejs
    typescript 
    yarn
    typescript-language-server
    buildPackages.libcxx
    openssl
  ];

  shellHook = ''
    echo "Entering development shell.."
    echo "node $(node --version)"
    echo "typescript $(tsc --version | awk '{print $2}')"
    echo "yarn $(yarn --version)"
  '';
}
