{ pkgs, ... }:

{
  languages.python.enable = true;

  packages = [ pkgs.pipenv ];

  scripts.install.exec = ''
    pipenv install
  '';

  scripts.run.exec = ''
    pipenv run python meteors/meteorites.py
  '';
}
