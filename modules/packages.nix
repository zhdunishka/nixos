{ config, pkgs, ... }:

{
nixpkgs.config.allowUnfree = true;
environment.systemPackages = with pkgs; [
	firefox
    fastfetch
    micro
    git
    curl
    gnome-tweaks
    obs-studio
    discord
    telegram-desktop
    steam
    zed-editor
	xclip
	steam-run
	gnome-extension-manager
	gcc
	gnomeExtensions.appindicator
  ];	
}
