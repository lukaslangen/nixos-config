{ config, pkgs, ... }:

let
    default_locale = "en_US.UTF-8";
    extra_locale = "de_DE.UTF-8";
    timezone = "Europe/Berlin";
in
{
    # Set your time zone.
    time.timeZone = "${timezone}";

    # Select internationalisation properties.
    i18n.defaultLocale = "${default_locale}";

    i18n.extraLocaleSettings = {
        LC_ADDRESS = "${extra_locale}";
        LC_IDENTIFICATION = "${extra_locale}";
        LC_MEASUREMENT = "${extra_locale}";
        LC_MONETARY = "${extra_locale}";
        LC_NAME = "${extra_locale}";
        LC_NUMERIC = "${extra_locale}";
        LC_PAPER = "${extra_locale}";
        LC_TELEPHONE = "${extra_locale}";
        LC_TIME = "${extra_locale}";
    };
}
