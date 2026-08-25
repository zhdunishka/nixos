{ config, pkgs, ... }: {
	imports = [
		./package.nix
		./program.nix
	];
}
