{...}: {
  programs.neovim = {
    enable = true;
  };
  xdg.enable = true;
  xdg.configFile.nvim.source = ./nvim;
}
