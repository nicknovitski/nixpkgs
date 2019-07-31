{ lib, bundlerApp, bundlerUpdateScript, makeWrapper, docker, git, gnutar, gzip
}:

bundlerApp {
  pname = "cide";
  exes = [ "cide" ];
  gemdir = ./.;

  buildInputs = [ makeWrapper ];

  postBuild = ''
    wrapProgram $out/bin/cide \
      --set PATH ${lib.makeBinPath [ docker git gnutar gzip ]}
  '';

  passthru.updateScript = bundlerUpdateScript "cide";

  meta = with lib; {
    description = "Isolated test runner with Docker";
    homepage    = http://zimbatm.github.io/cide/;
    license     = licenses.mit;
    maintainers = with maintainers; [ zimbatm nicknovitski ];
    platforms   = docker.meta.platforms;
  };
}
