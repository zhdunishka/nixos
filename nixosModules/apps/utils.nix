{ config, pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;
	programs.nix-ld.enable = true;
	environment.systemPackages = with pkgs; [
		git
		curl
		xclip
		steam-run
		gcc
	];
}
