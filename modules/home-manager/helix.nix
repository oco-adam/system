{config, ...}: {
  programs.helix  = {
    defaultEditor = true;
    enable = true;
    languages = {
      language = [{
        name = "rust";
        auto-format = true;
      }];

      language = [{
        name = "nix";
        auto-format = true;
      }];
  };
}
