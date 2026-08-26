{ config, pkgs, ... }: {	
	systemd.services.zapret = {
	after = [ "network-online.target" ];
  	wants = [ "network-online.target" ];
  	wantedBy = [ "multi-user.target" ];
  	path = with pkgs; [
	bash
	git
	iptables
	gawk
	coreutils
	nftables
	iproute2
	gnused
	procps
	which
	gnugrep
	curl
	];
  	serviceConfig = {
  		Type = "simple";
  		ExecStart = "/home/zhdunishka/zapret-discord-youtube-linux/service.sh run --config /home/zhdunishka/zapret-discord-youtube-linux/conf.env";
  		Restart = "always";
  		RestartSec = "5s";
		};
	};
}

