{ config, pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		firefox
		fastfetch
		neovim
		git
		curl
		obs-studio
		discord
		telegram-desktop
		zed-editor
		xclip
		steam-run
		gcc
	];	
}
