{
  lib,
  buildPythonPackage,
  fetchPypi,
  hatchling,
  anyconfig,
  coverage,
  rich,
  textual,
  typer,
}:

buildPythonPackage rec {
  pname = "coverage-rich";
  version = "0.2.0";
  pyproject = true;

  src = fetchPypi {
    pname = "coverage_rich";
    inherit version;
    hash = "sha256-JdOJdRSUPXRKaZ99u8ImPhPMLCbAFmLimzVIEcJFBpo=";
  };

  build-system = [
    hatchling
  ];

  dependencies = [
    anyconfig
    coverage
    rich
    textual
    typer
  ];

  pythonImportsCheck = [
    "coverage_rich"
  ];

  meta = {
    description = "A rich terminal report for coveragepy";
    homepage = "https://pypi.org/project/coverage-rich/";
    license = lib.licenses.mit;
    maintainers = [ ];
  };
}
