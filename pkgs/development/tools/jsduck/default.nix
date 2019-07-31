{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "jsduck";
  exes = [ "jsduck" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "jsduck";

  meta = with lib; {
    description = "Simple JavaScript Duckumentation generator.";
    homepage    = https://github.com/senchalabs/jsduck;
    license     = with licenses; gpl3;
    maintainers = with maintainers; [ periklis nicknovitski ];
    platforms   = platforms.unix;
  };
}
