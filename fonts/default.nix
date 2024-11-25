{
  stdenv,
  fontconfig,
  ...
}:
stdenv.mkDerivation {
  name = "Programming Fonts";
  src = ./truetype;

  buildInputs = [
    fontconfig
  ];

  installPhase = ''
    mkdir -p $out/share/fonts/truetype
    mkdir -p $out/share/fonts/opentype
    cp -r $src/* $out/share/fonts/truetype/
    cp -r $src/* $out/share/fonts/opentype/
  '';
}
