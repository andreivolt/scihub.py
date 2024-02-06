{ pkgs ? import <nixpkgs> {} }:

with pkgs;

python3Packages.buildPythonPackage rec {
  pname = "scihub";
  version = "1.0";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [
    beautifulsoup4
    requests
    retrying
    pysocks
  ];

  meta = with lib; {
    description = "Python API and command-line tool for Sci-Hub";
    homepage = "https://github.com/zaytoun/scihub.py/";
    license = licenses.mit;
  };
}
