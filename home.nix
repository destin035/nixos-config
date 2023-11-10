{
  config,
  pkgs,
  ...
}: {
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "destin";
  home.homeDirectory = "/home/destin";

  home.packages = with pkgs; [
    ripgrep
    unzip
    gcc
    telegram-desktop
    microsoft-edge
    (python311.withPackages (ps: with ps; [pip setuptools virtualenv]))
  ];

  programs.neovim.enable = true;

  programs.tmux.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "23.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
