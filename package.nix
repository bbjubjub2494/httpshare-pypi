{ buildPythonPackage
, bottle
, colorama
, docopt
, qrcode
}:
buildPythonPackage {
  pname = "httpshare";
  version = "1.0.7";
  src = ./.;

  propagatedBuildInputs = [
    bottle
    colorama
    docopt
    qrcode
  ];

  doCheck = false;
}
