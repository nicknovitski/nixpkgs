{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "maphosts";
  exes = [ "maphosts" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "maphosts";

  meta = with lib; {
    description = "Small command line application for keeping your project hostnames in sync with /etc/hosts";
    homepage    = https://github.com/mpscholten/maphosts;
    license     = licenses.mit;
    maintainers = with maintainers; [ mpscholten nicknovitski ];
    platforms   = platforms.all;
  };
}
