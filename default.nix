{
  pkgs ? import <nixpkgs> { },
}:
let
  callPackage = pkgs.lib.callPackageWith (pkgs // pkgs.python3Packages // custom);
  custom = {
    bbknn = callPackage ./bbknn.nix { };
    coverage-rich = callPackage ./coverage-rich.nix { };
    cudf = callPackage ./cudf.nix { };
    cugraph = callPackage ./cugraph.nix { };
    cuml = callPackage ./cuml.nix { };
    harmonypy = callPackage ./harmonypy.nix { };
    legacy-api-wrap = callPackage ./legacy-api-wrap.nix { };
    louvain = callPackage ./louvain.nix { };
    magic-impute = callPackage ./magic-impute.nix { };
    pytest-md = callPackage ./pytest-md.nix { };
    sam-algorithm = callPackage ./sam-algorithm.nix { };
    scanorama = callPackage ./scanorama.nix { };
    scanpy = callPackage ./scanpy.nix { };
    scanpydoc = callPackage ./scanpydoc.nix { };
    session-info = callPackage ./session-info.nix { };
    session-info2 = callPackage ./session-info2.nix { };
  };

in
custom
