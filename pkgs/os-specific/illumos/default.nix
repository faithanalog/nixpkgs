{ lib, stdenv, buildPackages
, newScope, overrideCC, crossLibcStdenv, libcCross
}:

lib.makeScope newScope (self: with self; {
  libc = {}; /* YYY */

  # `BuildPackages.fetchgit` avoids some probably splicing-caused infinite
  # recursion.
  # YYY switch to fetchFromGitHub
  illumosSrc = buildPackages.fetchgit {
    url = "https://github.com/illumos/illumos-gate.git";
    rev = "4a8d6d7c6863b4310fb772fbc42910bd3126b7aa";
    sha256 = "KXz/HXYpiF6nqmUcakl/PIWhiNGsZvcMY//3BBmoGQI=";
  };
})