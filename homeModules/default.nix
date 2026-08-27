{ config, pkgs, ... }: {
	imports = [
	<home-manager/nixos>
	];
	home-manager.users.zhdunishka = {
		imports = [
		./gnome.nix
		];
		home.stateVersion = "26.05";
	};
}
