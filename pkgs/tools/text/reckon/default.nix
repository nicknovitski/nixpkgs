{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "reckon";
  exes = [ "reckon" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "reckon";

  meta = with lib; {
    description = "Flexibly import bank account CSV files into Ledger for command line accounting";
    license = licenses.mit;
    maintainers = with maintainers; [ nicknovitski ];
    platforms = platforms.unix;
  };
}
