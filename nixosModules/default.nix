{ config, pkgs, ... }: {
	imports = [
                ./bluetooth.nix
		./bootloader.nix
		./envfs.nix
		./firewall.nix
                ./flatpak.nix
                ./fonts.nix
		./gnome.nix
		./locales.nix
		./network.nix
		./nixgc.nix
		./packages.nix
		./pipewire.nix
		./steam.nix
                ./tailscale.nix
		./users.nix
		./zapret.nix
	];
}
