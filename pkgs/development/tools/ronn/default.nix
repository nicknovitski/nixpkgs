{ lib, bundlerApp, bundlerUpdateScript, makeWrapper, groff }:

bundlerApp {
  pname = "ronn";
  exes = [ "ronn" ];
  gemdir = ./.;

  buildInputs = [ makeWrapper ];

  postBuild = ''
    wrapProgram $out/bin/ronn --set PATH ${groff}/bin
  '';

  passthru.updateScript = bundlerUpdateScript "ronn";

  meta = with lib; {
    description = "markdown-based tool for building manpages";
    homepage = https://rtomayko.github.io/ronn/;
    license = licenses.mit;
    maintainers = with maintainers; [ zimbatm nicknovitski ];
    platforms = platforms.all;
  };
}
