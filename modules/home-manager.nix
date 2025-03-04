{ inputs, ... }:

{
  imports = [ inputs.home-manager.nixosModules.home-manager ];
  home-manager.users.samir = {
    home.username = "samir";
    home.homeDirectory = "/home/samir";
    home.stateVersion = "24.11";

    programs.kitty.enable = true;

    programs.home-manager.enable = true;
  };
}
