{ config, pkgs, ... }: {
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
			enable-hot-corners = false;
			show-battery-percentage = true;
			icon-theme = "Adwaita";
			cursor-theme = "Adwaita";
		};
		"org/gnome/desktop/wm/preferences" = {
			button-layout = ":minimize,maximize,close";
			action-double-click-titlebar = "toggle-maximize";
		};
		"org/gnome/mutter" = {
			center-new-windows = true;
			edge-tiling = true;
		};
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = [
				"appindicatorsupport@rgcjonas.gmail.com"
			];
		};
		"org/gnome/wm/keybindings" = {
			switch-input-source = [ "<Alt>Shift_L" "<Shift>Alt_L" "<Alt>Shift_R" "<Shift>Alt_R" ];
		};
	};
	home.packages = with pkgs; [
		gnomeExtensions.appindicator
		adwaita-icon-theme
		adwaita-icon-theme-legacy
		];
}				
