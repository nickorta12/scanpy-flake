{
  lib,
  buildPythonPackage,
  fetchFromGitHub,
  hatch-docstring-description,
  hatch-vcs,
  hatchling,
  anyconfig,
  coverage,
  coverage-rich,
  pytest,
}:

buildPythonPackage rec {
  pname = "legacy-api-wrap";
  version = "1.4.1";
  pyproject = true;

  src = fetchFromGitHub {
    owner = "flying-sheep";
    repo = "legacy-api-wrap";
    rev = "v${version}";
    hash = "sha256-ySkhfUyRBd4QS3f46KlaA5NrHxHr+dlkgmD4fGk2KsA=";
  };

  build-system = [
    hatch-docstring-description
    hatch-vcs
    hatchling
  ];

  optional-dependencies = {
    test = [
      anyconfig
      coverage
      coverage-rich
      pytest
    ];
  };

  pythonImportsCheck = [
    "legacy_api_wrap"
  ];

  meta = {
    description = "Wrap legacy APIs in python projects";
    homepage = "https://github.com/flying-sheep/legacy-api-wrap";
    license = lib.licenses.mpl20;
    maintainers = [ ];
  };
}
