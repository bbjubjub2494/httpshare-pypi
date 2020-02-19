{ buildPythonPackage
, bottle
, colorama
, docopt
, qrcode
}:
buildPythonPackage {
  pname = "httpshare";
  src = ./.;
  version = with builtins; with fromJSON (readFile httpshare/version.json);
    "${toString major}.${toString minor}.${toString patch}"
      + (if suffix != "" then "-${suffix}" else "");

  propagatedBuildInputs = [
    bottle
    colorama
    docopt
    qrcode
  ];

  doCheck = false;
}
