{config, ...}: {
  programs.helix  = {
    defaultEditor = true;
    enable = true;
    languages = {
      language = [{
        name = "rust";
        auto-format = true;
      }
      {
        name = "nix";
        auto-format = true;
      }];
  };
}
