{
  services = {
    libinput.enable = true; # input handling
    fstrim.enable = true; # discard unused blocks
    gvfs.enable = true; # drive mounting
    openssh.enable = true; # openssh
    blueman.enable = true; # bluetooth
    gnome.gnome-keyring.enable = true;

    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
    };
  };
}

