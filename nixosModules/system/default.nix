{ config, pkgs, ... }: {
	imports = [
		./boot.nix
		./video.nix
		./audio.nix
		./user.nix
		./network.nix
		./locale.nix
		./desktop.nix
	];
}
