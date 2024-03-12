{pkgs, ...}:
{
    programs.neovim = {
        enable = true;
        defaultEditor = true;

        viAlias = true;
        vimAlias = true;
        vimdiffAlias = true;

        extraPackages = with pkgs; [
            lua-language-server
            stylua

            xclip
            wl-clipboard
        ];

        extraLuaPackages = (p: [ 
            p.lua-utils-nvim 
            p.nvim-nio
            p.nui-nvim
            p.pathlib-nvim
            p.luarocks
        ]);

        plugins = with pkgs.vimPlugins; [
            bufjump-nvim
            cmp-nvim-lsp
            cmp_luasnip
            comment-nvim
            conform-nvim
            dressing-nvim
            luasnip
            neorg
            neorg-telescope
            noice-nvim
            nui-nvim
            nvim-autopairs
            nvim-neoclip-lua
            nvim-cmp
            nvim-dap
            nvim-lspconfig
            nvim-notify
            nvim-surround
            nvim-treesitter.withAllGrammars
            plenary-nvim
            rose-pine
            telescope-fzf-native-nvim
            telescope-nvim
            tmux-nvim
            todo-comments-nvim
            which-key-nvim
        ];

        extraLuaConfig = ''
            ${builtins.readFile ./core.lua}
            ${builtins.readFile ./plugins/autopairs.lua}
            ${builtins.readFile ./plugins/cmp.lua}
            ${builtins.readFile ./plugins/conform.lua}
            ${builtins.readFile ./plugins/lspconfig.lua}
            ${builtins.readFile ./plugins/neorg.lua}
            ${builtins.readFile ./plugins/telescope.lua}
            ${builtins.readFile ./plugins/treesitter.lua}
            ${builtins.readFile ./plugins/noice.lua}
            require("bufjump").setup()
            require("Comment").setup()
            require("dressing").setup()
            require("tmux").setup()
            require("which-key").setup()
        '';
    };
}
