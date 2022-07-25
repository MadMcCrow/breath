# Nix shell for developing a godot game on Nixos and/or with Nix
with import <nixpkgs> {
  config.android_sdk.accept_license = true;
};

stdenv.mkDerivation {
  name = "breath";
  nativeBuildInputs = [
    toilet
    nix
    sudo
    git
    wget
    parted
    vboot_reference
    coreboot-utils
    pkg-config
  ];
  buildInputs = [
    ];
  
  # Set Environment Variables
  EDITOR = "nano";
}
