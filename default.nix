with import <nixpkgs> {};
let
  unstable = import
    (builtins.fetchTarball https://github.com/NixOS/nixpkgs/archive/staging.tar.gz)
    { config = config; };
in
stdenv.mkDerivation rec {
  name = "deno-boilerplate";
  buildInputs = with pkgs; [
    git
    gnumake
    unstable.deno
  ];
}

