{ config, pkgs, ... }: {
	imports = [
	<home-manager/nixos>
	];
	
	home-manager.useGlobalPkgs = true;
	home-manager.useUserPackages = true;
	home-manager.users.zhdunishka = { pkgs, ... }: {
		home.stateVersion = "26.05";
		imports = [
		];
	};
}
