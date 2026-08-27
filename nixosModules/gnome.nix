{ config, pkgs, ... }: {
	programs.xwayland.enable = true;
	programs.dconf.enable = true;
	services.xserver.xkb = {
		layout = "us,ru";
	};
	services.displayManager.gdm.enable = true;
	services.desktopManager.gnome.enable = true;
	environment.systemPackages = with pkgs; [
		gnome-tweaks
		adwaita-icon-theme
	];
}

