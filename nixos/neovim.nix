{ config, lib, pkgs, ... }:

with lib;

let
  cfg = config.programs.neovim;
in {
  options.programs.neovim = {
    defaultEditor = mkOption {
      type = types.bool;
      default = false;
      description = ''
        When enabled, installs neovim and configures neovim to be the default
        editor using the EDITOR environment variable.
      '';
    };
  };

  config = mkIf cfg.defaultEditor {
        environment.systemPackages = [ pkgs.neovim ];
        environment.variables = { EDITOR = mkOverride 900 "nvim"; };
  };
}
