{ bundlerApp, lib, bundlerUpdateScript }:

bundlerApp {
  pname = "bundler-audit";
  exes = [ "bundler-audit" "bundle-audit" ];
  gemdir = ./.;

  passthru.updateScript = bundlerUpdateScript "bundler-audit";

  meta = with lib; {
    description = "Patch-level verification for Bundler";
    longDescription = ''
      Features:
      - Checks for vulnerable versions of gems in Gemfile.lock.
      - Checks for insecure gem sources (http://).
      - Allows ignoring certain advisories that have been manually worked around.
      - Prints advisory information.
      - Does not require a network connection.
    '';
    homepage    = https://github.com/rubysec/bundler-audit;
    license     = licenses.gpl3Plus;
    maintainers = with maintainers; [ primeos nicknovitski ];
    platforms   = platforms.unix;
  };
}
