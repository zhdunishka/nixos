{ config, pkgs, ... }:
	
{
  imports =
    [
      ./hardware-configuration.nix
      ./modules/locales.nix
      ./modules/system.nix
      ./modules/network.nix
      ./modules/services.nix
      ./modules/programs.nix
      ./modules/users.nix
      ./modules/packages.nix
    ];

  system.stateVersion = "26.05";

}
