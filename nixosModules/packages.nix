{ config, pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		firefox
		discord
		telegram-desktop
		obs-studio
		gparted
		mpv
		feh
		
		fastfetch
		git
		curl
		gcc
		unzip
		unrar
		p7zip
	];
}
