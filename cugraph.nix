{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
}:

buildPythonPackage rec {
  pname = "cugraph";
  version = "0.6.1.post1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-8V4lb4pb+7O8ysbASwEKhSRN6uTdXf7VjJeEFja2vy8=";
  };

  build-system = [
    setuptools
    wheel
  ];

  pythonImportsCheck = [
    "cugraph"
  ];

  meta = {
    description = "";
    homepage = "https://pypi.org/project/cugraph";
    license = lib.licenses.asl20;
    maintainers = [ ];
  };
}
