{ pkgs, ... }:

{
    xsession.windowManager.i3.config.bars = [
        {
            position = "top";
            statusCommand = "${pkgs.i3status-rust}/bin/i3status-rs ~/.config/i3status-rust/config-default.toml";
        }
    ];

    programs.i3status-rust = {
        enable = true;
    };
}
