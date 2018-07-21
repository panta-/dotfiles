# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [ # Include the results of the hardware scan.
      ./hardware-configuration.nix
      ./neovim.nix
    ];

  # Use the systemd-boot EFI boot loader.
  boot.loader.systemd-boot.enable = true;
  boot.loader.efi.canTouchEfiVariables = true;

  boot.blacklistedKernelModules = [ "pcspkr" "psmouse" "uvcvideo" ];
  boot.kernel.sysctl = { "net.ipv4.icmp_echo_ignore_all" = 1; };
  boot.earlyVconsoleSetup = true;

  hardware.cpu.intel.updateMicrocode = true;
  hardware.opengl.extraPackages = [
    pkgs.vaapiIntel
  ];

  networking.hostName = "dellarch"; # Define your hostname.
  networking.extraHosts =
  ''
    127.0.0.1      dellarch.localdomain
    192.168.10.100 jolla.localdomain
    192.168.10.101 nexus7.localdomain
    192.168.10.105 canon.localdomain
    192.168.10.113 mbl.localdomain
    192.168.10.114 mbwe.localdomain
    192.168.10.115 office.localdomain
    192.168.10.116 ion.localdomain
    192.168.10.254 router.localdomain
  '';

  # Wireless
  networking.wireless.enable = false;  # Enables wireless support via wpa_supplicant.
  networking.wireless.iwd.enable = true;
  networking.dhcpcd.enable = false;
  systemd.network.enable = true;
  systemd.network.networks.wlan = {
    name = "wl*";
    DHCP = "both";
  };

  # Firewall
  networking.firewall.allowPing = false;
  networking.firewall.allowedTCPPorts = [ 39080 ];
  networking.firewall.allowedUDPPorts = [ 39080 ];
  networking.firewall.enable = true;

  # Select internationalisation properties.
  i18n = {
    consoleFont = "latarcyrheb-sun32";
    consoleKeyMap = "us-acentos";
    defaultLocale = "en_US.UTF-8";
    supportedLocales = [ "en_US.UTF-8/UTF-8" "el_GR.UTF-8/UTF-8" ];
  };

  # Set your time zone.
  time.timeZone = "Europe/Nicosia";

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    pkgs.curl
    pkgs.xbindkeys
    pkgs.xorg.xmodmap
    pkgs.xorg.xrdb
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  programs.kbdlight.enable = true;
  programs.udevil.enable = true;
  programs.vim.defaultEditor = true;
  programs.zsh.enable = true;

  # List services that you want to enable:

  services.fwupd.enable = true;
  services.thermald.enable = true;
  services.timesyncd.enable = true;

  # Enable the OpenSSH daemon.
  # services.openssh.enable = true;

  # Enable CUPS to print documents.
  # services.printing.enable = true;

  # Unbound
  # services.unbound.enable = true;
  # services.unbound.forwardAddresses = [ "127.0.0.1@43" ];

  # Syncthing
  # services.syncthing.enable = true;
  # services.syncthing.user = "panta";

  # Enable sound.
  sound.enable = true;

  # Enable the X11 windowing system.
  services.xserver.autorun = false;
  services.xserver.enable = true;
  services.xserver.layout = "us,gr";
  services.xserver.xkbModel = "pc105";
  services.xserver.xkbVariant = "intl,extended";
  services.xserver.xkbOptions = "eurosign:e,grp:shifts_toggle,grp_led:caps";
  services.xserver.videoDrivers = [ "modesetting" ];
  services.xserver.displayManager.lightdm.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.windowManager.i3.extraPackages = [
      pkgs.dmenu
      pkgs.i3status
      pkgs.i3lock
      #pkgs.cbatticon
    ];
  services.xserver.libinput.enable = true;
  services.xserver.libinput.naturalScrolling = true;
  services.xserver.libinput.tapping = true;
  services.xserver.dpi = 277;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.defaultUserShell = pkgs.zsh;
  users.mutableUsers = true;
  users.users.panta = {
    isNormalUser = true;
    home = "/home/panta";
    description = "Panayiotis Tembriotis";
    extraGroups = [ "wheel" ];
    uid = 1000;
    useDefaultShell = true;
    packages = [
      pkgs.chromium
      pkgs.feh
      pkgs.keepassxc
      pkgs.mosh
      pkgs.mpv
      pkgs.mupdf
      pkgs.neomutt
      pkgs.neovim
      pkgs.offlineimap
      pkgs.p7zip
      pkgs.termite
      pkgs.youtubeDL
    ];
  };
  users.users.root.initialHashedPassword = "";

  # This value determines the NixOS release with which your system is to be
  # compatible, in order to avoid breaking some software such as database
  # servers. You should change this only after NixOS release notes say you
  # should.
  system.nixos.stateVersion = "18.09"; # Did you read the comment?

}
