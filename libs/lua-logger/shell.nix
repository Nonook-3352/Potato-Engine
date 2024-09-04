let
  pkgs = import <nixpkgs> {};
in
pkgs.mkShell {
  buildInputs = with pkgs.luajit.pkgs; [
    penlight
  ];
}
