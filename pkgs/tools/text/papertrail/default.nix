{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "papertrail";
  exes = [ "papertrail" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "papertrail";

  meta = with lib; {
    description = "Command-line client for Papertrail log management service";
    homepage    = http://github.com/papertrail/papertrail-cli/;
    license     = licenses.mit;
    maintainers = with maintainers; [ nicknovitski ];
    platforms   = platforms.all;
  };
}
