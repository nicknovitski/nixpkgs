{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "rubocop";
  exes = [ "rubocop" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "rubocop";

  meta = with lib; {
    description = "Automatic Ruby code style checking tool";
    homepage = "https://docs.rubocop.org/";
    license = licenses.mit;
    maintainers = with maintainers; [ marsam leemachin nicknovitski ];
    platforms = platforms.unix;
  };
}
