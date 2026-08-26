{ config, pkgs, ... }: {
	imports = [
		./bluetooth.nix
		./bootloader.nix
		./envfs.nix
		./firewall.nix
		./locales.nix
		./network.nix
		./nixgc.nix
		./packages.nix
		./pipewire.nix
		./steam.nix
		./tlp.nix
		./users.nix
		./zapret.nix
	];
}
