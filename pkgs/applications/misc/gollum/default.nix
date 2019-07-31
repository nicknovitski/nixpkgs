{ lib, bundlerApp, makeWrapper, bundlerUpdateScript, git }:

bundlerApp {
  pname = "gollum";
  exes = [ "gollum" ];
  gemdir = ./.;

  buildInputs = [ makeWrapper ];

  postBuild = ''
    wrapProgram $out/bin/gollum \
      --prefix PATH ":" ${lib.makeBinPath [ git ]}
  '';

  passthru.updateScript = bundlerUpdateScript "gollum";

  meta = with lib; {
    description = "A simple, Git-powered wiki";
    homepage = https://github.com/gollum/gollum;
    license = licenses.mit;
    maintainers = with maintainers; [ jgillich primeos nicknovitski ];
    platforms = platforms.unix;
  };
}
