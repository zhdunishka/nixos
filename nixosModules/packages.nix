{ config, pkgs, ... }: {
	nixpkgs.config.allowUnfree = true;
	environment.systemPackages = with pkgs; [
		firefox
		discord
		telegram-desktop
		obs-studio
                portablemc
                anydesk
                gimp
                kdePackages.kdenlive
                libreoffice
                audacity
                droidcam
                lufus
		
		fastfetch
		git
		curl
		gcc
		unzip
		unrar
		p7zip
		eza
		bat
		zoxide
		ripgrep
		fd
		fzf
		sd
		btop
		procs
		duf
		dust
                jdk21
                glfw
                python3
                android-tools
	];
}
