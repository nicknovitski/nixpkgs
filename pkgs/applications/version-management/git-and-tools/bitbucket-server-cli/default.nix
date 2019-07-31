{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "atlassian-stash";
  gemdir = ./.;
  exes = [ "stash" ];

  passthru.updateScript = bundlerUpdateScript "gitAndTools.bitbucket-server-cli";

  meta = with lib; {
    description = "A command line interface to interact with BitBucket Server (formerly Atlassian Stash)";
    homepage    = https://bitbucket.org/atlassian/bitbucket-server-cli;
    license     = licenses.mit;
    maintainers = with maintainers; [ jgertm nicknovitski ];
    platforms   = platforms.unix;
  };
}
