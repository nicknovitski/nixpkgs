{ lib, bundlerApp, bundlerUpdateScript, xsel, makeWrapper }:

bundlerApp {
  pname = "pws";
  exes = [ "pws" ];
  gemdir = ./.;

  buildInputs = [ makeWrapper ];

  postBuild = ''
    wrapProgram $out/bin/pws \
      --set PATH '"${xsel}/bin/:$PATH"'
  '';

  passthru.updateScript = bundlerUpdateScript "pws";

  meta = with lib; {
    description = "Command-line password safe";
    homepage    = https://github.com/janlelis/pws;
    license     = licenses.mit;
    maintainers = with maintainers; [ swistak35 nicknovitski ];
    platforms   = platforms.unix;
  };
}
