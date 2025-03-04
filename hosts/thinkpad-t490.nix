{ config, modulesPath, ... }:

{
  imports = [
    (modulesPath + "/installer/scan/not-detected.nix")
    ../storage/nvme.nix
    ../modules/nixos.nix
    ../modules/systemd.nix
    ../modules/home-manager.nix
    ../modules/sway.nix 
    ../modules/kitty.nix
  ];

  boot = { 
    kernelModules = [ "kvm-intel" ];
    initrd.availableKernelModules = [  
      "rtsx_pci_sdmmc"
      "usb_storage"
      "xhci_pci"
      "sd_mod"
      "nvme"
    ];
  };
  hardware.cpu.intel.updateMicrocode = config.hardware.enableRedistributableFirmware;

  networking.useDHCP = true;
  nixpkgs.hostPlatform = "x86_64-linux";
  hardware.graphics.enable = true; # -> hardware.opengl.enable
}
