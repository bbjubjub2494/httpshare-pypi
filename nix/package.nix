{ buildPythonPackage
, bottle
, colorama
, docopt
, qrcode
, bats
, curl
}:
buildPythonPackage {
  pname = "httpshare";
  version = with builtins; with fromJSON (readFile ../httpshare/version.json);
    "${toString major}.${toString minor}.${toString patch}"
      + (if suffix != "" then "-${suffix}" else "");

  src = builtins.path { path = ../.; name = "source"; };

  propagatedBuildInputs = [
    bottle
    colorama
    docopt
    qrcode
  ];

  checkInputs = [ bats curl ];
  checkPhase = ''
    PATH=$out/bin:$PATH bats test.bats
  '';
}
