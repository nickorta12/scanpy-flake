{
  lib,
  buildPythonPackage,
  fetchPypi,
  setuptools,
  wheel,
}:

buildPythonPackage rec {
  pname = "cudf";
  version = "0.6.1.post1";
  pyproject = true;

  src = fetchPypi {
    inherit pname version;
    hash = "sha256-YtWLkjqaKHMngGMNjexSleVl4LWFAMH22yhur0+6DmY=";
  };

  build-system = [
    setuptools
    wheel
  ];

  pythonImportsCheck = [
    "cudf"
  ];

  meta = {
    description = "";
    homepage = "https://pypi.org/project/cudf";
    license = lib.licenses.asl20;
    maintainers = [ ];
  };
}
