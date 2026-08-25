{ config, pkgs, ... }: {
	imports = [
		./envfs.nix
		./zapret.nix
	];
}	
