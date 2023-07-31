{...}: {
  programs.helix = {
    defaultEditor = true;
    enable = true;
    languages = {
      language = [
        {
          name = "rust";
          auto-format = true;
        }

        {
          name = "nix";
          auto-format = true;
        }
      ];

      "language-server.rust-analyzer.config" = {
        "checkOnSave.command" = "clippy";
        "cargo.allFeatures" = true;
        "procMacro.enable" = true;
      };
    };
    settings = {
      editor = {
        cursor-shape = {
          insert = "bar";
          normal = "block";
          select = "underline";
        };
        file-picker.hidden = false;
        line-number = "relative";
        lsp.display-messages = true;
      };
      keys.normal = {
        esc = ["collapse_selection" "keep_primary_selection"];
        space.q = ":q";
        space.space = "file_picker";
        space.w = ":w";
      };
      theme = "dark_plus";
    };
  };
}
