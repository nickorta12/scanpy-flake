{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
  pytest,
}:

buildPythonPackage rec {
  pname = "pytest-md";
  version = "0.2.0";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-OySNWzYOpRmOBbT0nHRCI0gSgJpjE37GzdNkOkDPARI=";
  };

  build-system = [
    setuptools
    wheel
  ];

  dependencies = [
    pytest
  ];

  pythonImportsCheck = [
    "pytest_md"
  ];

  meta = {
    description = "Plugin for generating Markdown reports for pytest results";
    homepage = "https://pypi.org/project/pytest-md";
    license = lib.licenses.mit;
    maintainers = [ ];
  };
}
