{ pkgs, ... }:

{
  system.stateVersion = "24.11";

  console.keyMap = "dvorak";
  services.xserver.xkb = {
    layout = "dvorak";
  };

  services.getty.autologinUser = "samir";
  users.users.samir = {
    isNormalUser = true;
    extraGroups = [ "wheel" ];
  };
  security.sudo.extraRules = [
    {
      users = [ "samir" ];
      commands = [
        {
          command = "ALL";
          options = [ "NOPASSWD" ];
        }
      ];
    }
  ];

  fonts = {
    packages = with pkgs; [
      ibm-plex
    ];
  };
 
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
}
