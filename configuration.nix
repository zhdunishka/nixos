{ config, pkgs, ... }:
	
{
  imports =
    [
      ./hardware-configuration.nix
    ];

# Настройки системы
  
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;
  boot.kernelPackages = pkgs.linuxPackages_latest;
  networking.hostName = "nixos";
  networking.networkmanager.enable = true;
  time.timeZone = "Europe/Moscow";
  i18n.defaultLocale = "ru_RU.UTF-8";
  i18n.extraLocaleSettings = {
    LC_ADDRESS = "ru_RU.UTF-8";
    LC_IDENTIFICATION = "ru_RU.UTF-8";
    LC_MEASUREMENT = "ru_RU.UTF-8";
    LC_MONETARY = "ru_RU.UTF-8";
    LC_NAME = "ru_RU.UTF-8";
    LC_NUMERIC = "ru_RU.UTF-8";
    LC_PAPER = "ru_RU.UTF-8";
    LC_TELEPHONE = "ru_RU.UTF-8";
    LC_TIME = "ru_RU.UTF-8";
  };

# Сервисы и программы

  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
  services.pulseaudio.enable = false;
  security.rtkit.enable = true;
  programs.nix-ld.enable = true;
  services.envfs.enable = true;
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
  };

# Настройка юзера

  users.users."zhdunishka" = {
    isNormalUser = true;
    description = "zhdunishka";
    extraGroups = [ "networkmanager" "wheel" ];
    packages = with pkgs; [
    ];
  };

# Пакеты

  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
    firefox
    fastfetch
    micro
    git
    curl
  ];

  system.stateVersion = "26.05"; # просто не трогай

}
