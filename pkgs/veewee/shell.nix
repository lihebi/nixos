with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "env";
  buildInputs = [
    ruby.devEnv
    git
    sqlite
    libpcap
    postgresql
    libxml2
    libxslt
    curl
    pkgconfig
    bundix
    gnumake
  ];
}
