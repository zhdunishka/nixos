{ config, pkgs, ... }: {
	imports = [
		./apps/cli-utils.nix
		./apps/gui-utils.nix
		./apps/utils.nix
		./core/boot.nix
		./core/locales.nix
		./core/network.nix
		./core/users.nix
		./desktop/cinnamon.nix
#		./desktop/xfce.nix
		./services/envfs.nix
		./services/zapret.nix
		./hardware/video.nix
		./hardware/audio.nix
	];
}
