**NvChad-based Neovim config**

This repo is a personal NvChad configuration. The main NvChad repo (NvChad/NvChad) is pulled in as a plugin, and this repo overrides or extends it by importing NvChad modules like `require "nvchad.options"` and `require "nvchad.mappings"`.

If you clone this repo locally, you can delete the `.git` folder or fork it.

## Folder structure

- [init.lua](init.lua): entrypoint that loads core config and plugins.
- [lua/](lua/): main configuration code.
	- [lua/options.lua](lua/options.lua): core editor options.
	- [lua/mappings.lua](lua/mappings.lua): key mappings.
	- [lua/autocmds.lua](lua/autocmds.lua): autocommands.
	- [lua/chadrc.lua](lua/chadrc.lua): NvChad-specific overrides and UI tweaks.
	- [lua/configs/](lua/configs/): per-plugin setup and shared configuration.
		- [lua/configs/conform.lua](lua/configs/conform.lua): formatter configuration.
		- [lua/configs/lazy.lua](lua/configs/lazy.lua): Lazy.nvim setup.
		- [lua/configs/lspconfig.lua](lua/configs/lspconfig.lua): LSP configuration.
	- [lua/plugins/](lua/plugins/): plugin specs and plugin-specific behavior.
		- [lua/plugins/init.lua](lua/plugins/init.lua): plugin list and defaults.
		- [lua/plugins/alpha.lua](lua/plugins/alpha.lua): dashboard/start screen.
		- [lua/plugins/copilot.lua](lua/plugins/copilot.lua): GitHub Copilot setup.
		- [lua/plugins/delimiter.lua](lua/plugins/delimiter.lua): delimiter helpers.
		- [lua/plugins/finders.lua](lua/plugins/finders.lua): telescope/finder tweaks.
		- [lua/plugins/git-explorer.lua](lua/plugins/git-explorer.lua): git browsing UI.
		- [lua/plugins/git-sign.lua](lua/plugins/git-sign.lua): git signs in gutter.
		- [lua/plugins/gopher.lua](lua/plugins/gopher.lua): Go tooling.
		- [lua/plugins/harpoon.lua](lua/plugins/harpoon.lua): quick file marks.
		- [lua/plugins/hop.lua](lua/plugins/hop.lua): motion/jump helpers.
		- [lua/plugins/neogit.lua](lua/plugins/neogit.lua): git UI.
		- [lua/plugins/neoscroll.lua](lua/plugins/neoscroll.lua): smooth scrolling.
		- [lua/plugins/oil.lua](lua/plugins/oil.lua): file explorer.
		- [lua/plugins/trouble.lua](lua/plugins/trouble.lua): diagnostics list.

## Notes

- This repo assumes NvChad is installed as a plugin.
- Customize by editing files under [lua/](lua/).

## Credits

- Lazyvim starter: https://github.com/LazyVim/starter (NvChad's starter was inspired by it).
