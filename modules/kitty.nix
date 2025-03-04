{ config, ... }:

{
  config.home-manager.users.samir = {
    programs.kitty = {
      enable = true;
      settings = { 
        font_family = "IBM Plex Mono";
        font_size = 12.0;
        window_padding_width = "10 14";
      };
    };
  };
}
