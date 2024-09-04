{ lib, python3Packages }:

python3Packages.buildPythonApplication {
  pname = "fabrix-nix-example";
  version = "0.0.1";
  pyproject = true;

  src = ./.;

  propagatedBuildInputs = with python3Packages; [ python-fabric ];
  doCheck = false;

  meta = {
    changelog = "";
    description = ''
      Fabrix Bar Example
    '';
    homepage = "https://github.com/wholikeel/fabric";
    license = lib.licenses.agpl3Only;
  };
}
