{ config, pkgs, ... }:

{
users.users."zhdunishka" = {
	isNormalUser = true;
    description = "zhdunishka";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };
}  
