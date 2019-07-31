{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "fluentd";
  gemdir = ./.;

  exes = [
    "fluent-binlog-reader"
    "fluent-ca-generate"
    "fluent-cat"
    "fluent-debug"
    "fluent-gem"
    "fluent-plugin-config-format"
    "fluent-plugin-generate"
    "fluentd"
  ];

  passthru.updateScript = bundlerUpdateScript "fluentd";

  meta = with lib; {
    description = "A data collector";
    homepage    = https://www.fluentd.org/;
    license     = licenses.asl20;
    maintainers = with maintainers; [ offline nicknovitski ];
    platforms   = platforms.unix;
  };
}
