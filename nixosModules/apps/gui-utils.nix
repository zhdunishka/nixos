{ pkgs, config, ... }: {
	nixpkgs.config.allowUnfree = true;
	programs.steam.enable = true;
	environment.systemPackages = with pkgs; [
		firefox
		obs-studio
		discord
		telegram-desktop
		zed-editor
		];
}
