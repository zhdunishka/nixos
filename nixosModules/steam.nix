{ config, pkgs, ... }: {
	programs.steam.enable = true;
	hardware.steam-hardware.enable = true;
	programs.nix-ld.enable = true;
	environment.systemPackages = with pkgs; [
		steam-run
	];
}
