{ config, pkgs, ... }: {
        programs.nixvim = {
		enable = true;
		defaultEditor = true;
		colorschemes.gruvbox.enable = true;
		keymaps = [ {
                        mode = "i";
                        key = "jk";
                        action = "<Esc>";
                        options.silent = true;
                        }
                ];
                opts = {
			number = true;
			relativenumber = true;
			shiftwidth = 8;
			tabstop = 8;
			expandtab = true;  
                        guifont = "JetBrainsMono Nerd Font:h14";
                        };
	plugins = {
		lualine.enable = true;
		treesitter.enable = true;
		telescope = {
                        enable = true;
                        keymaps = {
                                "<leader>ff" = "find_files";
                                "<leader>fg" = "live_grep";
                        };
                };
                bufferline.enable = true;
                which-key.enable = true;
                neo-tree.enable = true;
                web-devicons.enable = true;
                nvim-autopairs.enable = true;
                cmp = {
                        enable = true;
                        autoEnableSources = true;
                        settings.sources = [
                                { name = "nvim_lsp"; }
                                { name = "path"; }
                                { name = "buffer"; }
                                ];
                        };
		lsp = {
			enable = true;
			servers = {
				nil_ls.enable = true;
				clangd.enable = true;
				pyright.enable = true;
				bashls.enable = true;
				rust_analyzer = {
					enable = true;
					installCargo = false;
					installRustc = false;
					};
				html.enable = true;
				cssls.enable = true;
				ts_ls.enable = true;
				jsonls.enable = true;
				};
			};
		};	
	};
}
