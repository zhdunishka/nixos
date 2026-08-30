{ config, pkgs, ... }: {
	imports = [
		./anydesk.nix
                ./bluetooth.nix
		./bootloader.nix
		./envfs.nix
		./firewall.nix
                ./fonts.nix
		./gnome.nix
		./locales.nix
		./network.nix
		./nixgc.nix
		./packages.nix
		./pipewire.nix
		./steam.nix
		./users.nix
		./zapret.nix
	];
}
