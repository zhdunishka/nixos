{ config, pkgs, ... }: {
        services.anydesk.enable = true;
        environment.systemPackages = with pkgs; [
                anydesk
                ];
}
