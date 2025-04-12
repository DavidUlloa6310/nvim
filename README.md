#   David's Neovim Configuration

##   Repository Structure

The core of the configuration is organized as follows:

* `init.lua`: This is the main entry point for the Neovim configuration, responsible for loading the rest of the modules.
* `after/plugin/`: This directory contains configuration files for specific plugins, which are loaded after the main plugins.
    * `fugitive.lua`: Configuration for the `vim-fugitive` plugin, providing Git integration.
    * `harpoon.lua`:  Configuration for `harpoon`, a tool for marking and quickly navigating between files.
    * `lsp.lua`:  Configuration for LSP (Language Server Protocol) support, including `lsp-zero`, `mason.nvim`, and `nvim-lspconfig`.
    * `telescope.lua`: Configuration for `telescope.nvim`, a fuzzy finder.
    * `treesitter.lua`: Configuration for `nvim-treesitter`, providing enhanced syntax highlighting and code navigation.
    * `undotree.lua`: Configuration for `undotree`, a plugin for visualizing the undo history.
* `lua/davidulloa/`: This directory contains custom Lua modules.
    * `init.lua`:  Initializes the `davidulloa` module and loads other modules within it.
    * `packer.lua`: Configuration for `packer.nvim`, the Neovim package manager.
    * `remap.lua`: Defines custom keybindings.
    * `set.lua`:  Sets various Neovim options.
* `plugin/packer_compiled.lua`: This file is automatically generated by `packer.nvim` and contains the plugin loader code.

##   Keybindings

Here's a breakdown of the keybindings used in this configuration:

###   General

* `<leader>pv`:  Open the current file's directory in Neovim's Ex mode.  The `<leader>` key is set to space (" ") in `lua/davidulloa/remap.lua`. [cite: 13, 2]

###   Git (vim-fugitive)

* `<leader>gs`: Open the Git status window. [cite: 2]

###   Harpoon

* `<C-a>`:  Add the current file to the harpoon mark list. [cite: 3]
* `<leader>a`: Toggle the harpoon quick menu. [cite: 3]
* `<C-h>`: Navigate to file 1 in the harpoon list. [cite: 3]
* `<C-j>`: Navigate to file 2 in the harpoon list. [cite: 3]
* `<C-k>`: Navigate to file 3 in the harpoon list. [cite: 3]
* `<C-l>`: Navigate to file 4 in the harpoon list. [cite: 3]

###   LSP (Language Server Protocol)

* `gh`:  `Lspsaga lsp_finder` (finds LSP related information). [cite: 3, 4]
* `gp`:  `Lspsaga peek_definition` (peek definition of a symbol). [cite: 3, 4]
* `K`:   `Lspsaga hover_doc` (show hover documentation). [cite: 3, 4]
* `gd`:  Go to definition. [cite: 3, 4]
* `K`:   Show hover information. [cite: 3, 4]
* `<leader>vws`:  Workspace symbol search. [cite: 3, 4]
* `<leader>vd`:  Show diagnostics in a floating window. [cite: 3, 4]
* `[d`:   Go to the next diagnostic. [cite: 3, 4]
* `]d`:   Go to the previous diagnostic. [cite: 4]
* `<leader>vca`:  Code action. [cite: 4]
* `<leader>vrr`:  Show references. [cite: 4]
* `<leader>vrn`:  Rename symbol. [cite: 4]
* `<C-h>`:  Show signature help (in insert mode). [cite: 4]
* `<C-p>`: Select previous item in autocompletion menu. [cite: 6]
* `<C-n>`: Select next item in autocompletion menu. [cite: 6]
* `<C-c>`: Confirm completion. [cite: 6]
* `<C-Space>`: Trigger completion. [cite: 6]

###   Telescope

* `<leader>pf`: Find files. [cite: 6]
* `<C-p>`:    Find Git files. [cite: 6]
* `<leader>ps`: Grep string (find string in files). [cite: 6]

###   Undotree

* `<leader>u`: Toggle the Undotree window. [cite: 9]

##   Plugin Management

* `packer.nvim` is used for plugin management.  See `lua/davidulloa/packer.lua` for the plugin list and configuration. [cite: 9, 10, 11, 12, 19, 20, 21, 22]
* To install plugins, use Packer's commands (e.g., `:PackerSync`).

##   LSP Configuration

* `lsp-zero` is used to simplify LSP configuration. [cite: 3, 4, 5, 11]
* `mason.nvim` and `mason-lspconfig.nvim` are used to manage and install LSP servers. [cite: 4, 5, 11]
* See `after/plugin/lsp.lua` for LSP server setup and keybindings. [cite: 3, 4, 5]

##   Treesitter

* `nvim-treesitter` is used for improved syntax highlighting and code navigation. [cite: 6, 7, 8, 9, 10, 21]
* See `after/plugin/treesitter.lua` for configuration. [cite: 6, 7, 8, 9, 10]

##   Custom Settings

* Various Neovim options are set in `lua/davidulloa/set.lua`, including:
    * Line numbering. [cite: 14]
    * Tab settings. [cite: 14]
    * Indentation. [cite: 14]
    * Search behavior. [cite: 14]
    * UI settings (e.g., color column, termguicolors). [cite: 14]
    * Markdown wrapping. [cite: 14]

##   Color Scheme

* [rose-pine](https://github.com/rose-pine/neovim) is the color scheme. [cite: 10, 22]
* It is configured in `lua/davidulloa/packer.lua`. [cite: 10, 22]

This README provides a comprehensive overview of the Neovim configuration. Remember to explore the individual files for more detailed information and customization options.
