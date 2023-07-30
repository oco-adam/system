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
    settings = {
      theme = "base16";
      editor = {
        line-number = "relative";
        lsp.display-messages = true;
      };
      keys.normal = {
        space.space = "file_picker";
        space.w = ":w";
        space.q = ":q";
        esc = [ "collapse_selection" "keep_primary_selection" ];
      };
    };
  };
}
