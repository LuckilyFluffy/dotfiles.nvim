# Dotfiles for Neovim
This repository contains my personal Neovim (nvim) configuration files and plugins to enhance the text editing experience.

## Requirements
- [Neovim](https://neovim.io): You'll need Neovim installed on your system to use these configuration files.
- [Lazy.nvim](https://github.com/folke/lazy.nvim): We use Lazy.nvim as a plugin manager. Lazy.nvim auto-bootstraps itself, so there's no need to install it manually.

## Included Files
This configuration includes the following files and directories:

- `init.lua`: The main Neovim configuration file.
- `lua/set.lua`: Various settings and options for Neovim.
- `lua/remap.lua`: Keybinding configurations.
- `lua/plugins.lua`: Configuration for managing plugins and their settings.

Additionally, this configuration provides some specific settings for LSP (Language Server Protocol) located in the following directory:

- `after/plugin/lsp.lua`: LSP-related configuration files to enhance your development experience.

Feel free to explore and customize these files to suit your specific preferences and needs.

## Installation
To install these configuration files into your Neovim setup, follow these steps:

1. Clone this repository to your local machine using `git clone https://github.com/LuckilyFluffy/dotfiles.nvim ~/.config/nvim`
2. Open Neovim
3. You may also need to ensure that Lazy.nvim is installed and configured to manage your plugins, which will load the configuration from `lua/plugins.lua`.
4. Restart Neovim for the changes to take effect.

## Customization
Feel free to customize the `init.lua`, `lua/set.lua`, `lua/remap.lua`, and `lua/plugins.lua` files to suit your preferences. You can also explore the LSP configuration in `after/plugin/lsp.lua` for advanced language server integration and settings.

## Contributing
If you have any improvements, feature additions, or bug fixes for this Neovim configuration, please don't hesitate to submit a pull request. Contributions are welcome!

## License
This repository is licensed under the [MIT License](LICENSE).
