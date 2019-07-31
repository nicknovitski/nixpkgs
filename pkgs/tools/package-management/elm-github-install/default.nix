{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "elm_install";
  exes = [ "elm-install" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "elm-github-install";

  meta = with lib; {
    description = "Install Elm packages from git repositories.";
    homepage    = https://github.com/gdotdesign/elm-github-install;
    license     = licenses.unfree;
    maintainers = with maintainers; [ roberth nicknovitski ];
    platforms   = platforms.all;
  };
}
