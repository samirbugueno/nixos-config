{ config, ... }:

{
  config.home-manager.users.samir.wayland.windowManager.sway = {
    enable = true;
    config = {
      modifier = "Mod4";
      terminal = "kitty";
      input."*" = {
        xkb_layout = "us";
        xkb_variant = "dvorak";
        xkb_options = "compose:ralt";
      };
      keybindings = {
        "Mod4+Return" = "exec kitty";
      };
    };
  };
}
