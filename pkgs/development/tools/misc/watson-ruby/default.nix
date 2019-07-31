{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "watson-ruby";
  exes = [ "watson" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "watson-ruby";

  meta = with lib; {
    description = "An inline issue manager";
    homepage    = http://goosecode.com/watson/;
    license     = with licenses; mit;
    maintainers = with maintainers; [ robertodr nicknovitski ];
    platforms   = platforms.unix;
  };
}
