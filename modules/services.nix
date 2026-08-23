{ config, pkgs, ... }:

{
services.displayManager.gdm.enable = true;
services.desktopManager.gnome.enable = true;
services.pulseaudio.enable = false;
security.rtkit.enable = true;
services.envfs.enable = true;
services.pipewire = {
	enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };	
}
