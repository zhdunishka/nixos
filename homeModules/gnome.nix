{ config, pkgs, ... }: {
	dconf.settings = {
		"org/gnome/desktop/interface" = {
			color-scheme = "prefer-dark";
			enable-hot-corners = false;
			show-battery-percentage = true;
			icon-theme = "Papirus-Dark";
			cursor-theme = "Adwaita";
		};
		"org/gnome/desktop/wm/preferences" = {
			button-layout = ":minimize,maximize,close";
			action-double-click-titlebar = "toggle-maximize";
		};
		"org/gnome/mutter" = {
			center-new-windows = true;
			edge-tiling = true;
                        experimental-features = [ "xwayland-native-scaling" ];
		};
		"org/gnome/shell" = {
			disable-user-extensions = false;
			enabled-extensions = [
				"appindicatorsupport@rgcjonas.gmail.com"
			];
		};
		"org/gnome/desktop/wm/keybindings" = {
			switch-input-source = [ "<Alt>Shift_L" "<Shift>Alt_L" "<Alt>Shift_R" "<Shift>Alt_R" ];
		};
	};
	gtk = {
		enable = true;
		iconTheme = {
			name = "Papirus-Dark";
			package = pkgs.papirus-icon-theme;
		};
                cursorTheme = {
                        name = "Adwaita";
                        size = 24;
                };
	};
        home.pointerCursor = {
                enable = true;
                gtk.enable = true;
                x11.enable = true;
                name = "Adwaita";
                size = 24;
                package = pkgs.adwaita-icon-theme;
        };
	home.packages = with pkgs; [
		gnomeExtensions.appindicator
		adwaita-icon-theme
                papirus-icon-theme
		];
}				
