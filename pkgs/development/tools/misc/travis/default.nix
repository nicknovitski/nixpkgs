{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "travis";
  gemdir = ./.;
  exes = [ "travis" ];

  passthru.updateScript = bundlerUpdateScript "travis";

  meta = with lib; {
    description = "CLI and Ruby client library for Travis CI";
    homepage    = https://github.com/travis-ci/travis.rb;
    license     = licenses.mit;
    maintainers = with maintainers; [ zimbatm nicknovitski ];
  };
}
