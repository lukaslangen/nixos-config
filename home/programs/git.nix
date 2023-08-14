{ pkgs, ... }:

{
    programs.git = {
        enable = true;
        userName = "Lukas Langen";
        userEmail = "lukas@langen.dev";

        extraConfig = {
            core = {
                editor = "nvim";
            };

            init = {
                defaultBranch = "main";
            };
        };
    };
}
