{ config, pkgs, ... }:

{
networking.hostName = "nixos";
networking.networkmanager.enable = true;
systemd.services.zapret = {
	after = [ "network-online.target" ];
  	wants = [ "network-online.target" ];
  	wantedBy = [ "multi-user.target" ];
  	path = [ pkgs.bash pkgs.git pkgs.iptables pkgs.gawk pkgs.coreutils pkgs.nftables pkgs.iproute2 pkgs.gnused pkgs.coreutils pkgs.procps pkgs.which pkgs.gnused pkgs.gnugrep pkgs.curl ];
  	serviceConfig = {
  		Type = "simple";
  		ExecStart = "/home/zhdunishka/zapret-discord-youtube-linux/service.sh run --config /home/zhdunishka/zapret-discord-youtube-linux/conf.env";
  		Restart = "always";
  		RestartSec = "5s";
		};
	};
}  
