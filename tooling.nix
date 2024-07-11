{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    bun
    yarn
    corepack_latest
    pnpm-shell-completion
    nodePackages_latest.nodejs

    emmet-ls
    prettierd
    typescript
    nodePackages_latest.eslint
    nodePackages_latest.prettier
    vscode-langservers-extracted
    tailwindcss-language-server
    nodePackages_latest.typescript-language-server
    nodePackages_latest.vscode-json-languageserver

    sumneko-lua-language-server
    luajitPackages.luarocks
    stylua
    lua

    python3
    pyright
    black
    mypy
    ruff

    shellcheck
    beautysh

    nixfmt-classic
    nil
    gcc

    zig-shell-completions
    zig
    zls

    neovide
    insomnia
    postgresql
  ];

  programs.neovim = {
    enable = true;
    defaultEditor = true;
    package = pkgs.neovim-unwrapped;
  };
}
