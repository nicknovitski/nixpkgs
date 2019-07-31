{ lib, bundlerApp, bundlerUpdateScript }:

bundlerApp {
  pname = "lvmsync";
  gemdir = ./.;
  exes = [ "lvmsync" ];

  passthru.updateScript = bundlerUpdateScript "lvmsync";

  meta = with lib; {
    description = "Optimised synchronisation of LVM snapshots over a network";
    homepage = http://theshed.hezmatt.org/lvmsync/;
    license = licenses.gpl3;
    platforms = platforms.all;
    maintainers = with maintainers; [ jluttine nicknovitski ];
  };

}
