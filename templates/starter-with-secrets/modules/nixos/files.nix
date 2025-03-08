{ user, ... }:

let
  home           = builtins.getEnv "HOME";
  xdg_configHome = "${home}/.config";
  xdg_dataHome   = "${home}/.local/share";
  xdg_stateHome  = "${home}/.local/state"; in
{
  "${xdg_configHome}/nix-temp" = {
    executable = true;
    text = ''
      #!/bin/sh

      echo "Hello, world!"
    '';
  };
}
