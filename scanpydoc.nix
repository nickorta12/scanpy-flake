{
  lib,
  buildPythonPackage,
  fetchPypi,
  hatch-vcs,
  hatchling,
  sphinx,
  pre-commit,
  scanpydoc,
  myst-parser,
  coverage,
  defusedxml,
  legacy-api-wrap,
  pytest,
  sphinx-book-theme,
  sphinx-autodoc-typehints,
}:

buildPythonPackage rec {
  pname = "scanpydoc";
  version = "0.15.4";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-bFtCltaZwTLeDnPni9oDpJAbi4pwygE77k4C/K7irvM=";
  };

  build-system = [
    hatch-vcs
    hatchling
  ];

  dependencies = [
    sphinx
  ];

  optional-dependencies = {
    dev = [
      pre-commit
    ];
    doc = [
      scanpydoc
      sphinx
    ];
    myst = [
      myst-parser
    ];
    test = [
      coverage
      defusedxml
      legacy-api-wrap
      pytest
      sphinx
    ];
    theme = [
      sphinx-book-theme
    ];
    typehints = [
      sphinx-autodoc-typehints
    ];
  };

  pythonImportsCheck = [
    "scanpydoc"
  ];

  meta = {
    description = "A series of Sphinx extensions to get maintainable numpydoc style documentation";
    homepage = "https://pypi.org/project/scanpydoc";
    license = lib.licenses.gpl3Only;
    maintainers = [ ];
  };
}
