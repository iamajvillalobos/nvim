# Neovim Configuration

A minimal but functional Neovim configuration optimized for Ruby on Rails development.

## Features

### Core
- **Lua-based configuration** - Modern Neovim setup using init.lua
- **Lazy.nvim plugin manager** - Fast, modern plugin management
- **Tokyo Night colorscheme** - Beautiful dark theme with treesitter support

### Language Support (LSP)
- **Mason** - LSP server management
- **ruby-lsp** - Ruby language server for autocompletion, diagnostics
- **Go to definition** (`gd`), **hover docs** (`K`), **find references** (`gr`)
- **Rename** (`<leader>rn`), **code actions** (`<leader>ca`)

### Navigation & File Management
- **Telescope** - Fuzzy finder for files, text search, buffers
- **Oil.nvim** - Edit directories like buffers (revolutionary file explorer)
- **Symbol navigation** - Find methods/classes in current file

### Git Integration
- **Gitsigns** - Git status in gutter, inline blame information
- **Visual indicators** - See added (+), modified (~), deleted (-) lines

### Code Enhancement
- **Treesitter** - Superior syntax highlighting for Ruby, JS, HTML, CSS
- **Smart indentation** - Language-aware indentation
- **Built-in commenting** - `gcc` to comment/uncomment lines (Neovim built-in)

## Keybindings

### Telescope (Fuzzy Finding)
- `<leader>ff` - Find files
- `<leader>fg` - Live grep (search in files)
- `<leader>fb` - Find buffers
- `<leader>fs` - Find symbols/methods in current file
- `<leader>fh` - Help tags

### LSP (Language Server)
- `gd` - Go to definition
- `gr` - Go to references
- `gi` - Go to implementation
- `K` - Hover documentation
- `<leader>rn` - Rename symbol
- `<leader>ca` - Code actions
- `<leader>q` - Close quickfix window

### File Explorer (Oil)
- `-` - Open file explorer in current directory
- `Enter` - Open file/enter directory
- `dd` - Delete file (like vim delete line)
- `A` - Create new file (like vim append)
- `:w` - Save filesystem changes

### Commenting (Built-in)
- `gcc` - Comment/uncomment current line
- `gc` + motion - Comment motion (e.g., `gcap` for paragraph)
- `gc` in visual mode - Comment selection

### General
- `<leader>` = `Space`
- Standard vim navigation (`h`, `j`, `k`, `l`)

## Installation

1. Backup existing Neovim config:
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   ```

2. Clone this config:
   ```bash
   git clone <this-repo> ~/.config/nvim
   ```

3. Install system dependencies:
   ```bash
   # macOS
   brew install ripgrep fzf fd

   # Ubuntu/Debian
   sudo apt install ripgrep fzf fd-find
   ```

4. Start Neovim:
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install all plugins on first run.

5. Install Ruby language server:
   ```
   :Mason
   ```
   Search for and install `ruby-lsp`.

## Requirements

- **Neovim** >= 0.9.0
- **Git** (for plugin management)
- **ripgrep** (for live grep in Telescope)
- **fzf** (for better fuzzy finding performance)
- **fd** (for file finding optimization)
- **Ruby project with bundler** (for LSP to work properly)

## File Structure

```
~/.config/nvim/
├── init.lua          # Main configuration file
├── lazy-lock.json    # Plugin lockfile (auto-generated)
└── README.md         # This file
```

## Plugins Used

- [lazy.nvim](https://github.com/folke/lazy.nvim) - Plugin manager
- [mason.nvim](https://github.com/williamboman/mason.nvim) - LSP server manager
- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) - LSP configuration
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Syntax highlighting
- [oil.nvim](https://github.com/stevearc/oil.nvim) - File explorer
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) - Git integration
- [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) - Colorscheme

## Philosophy

This configuration prioritizes:
- **Minimal complexity** - Only essential plugins
- **Ruby/Rails focus** - Optimized for web development
- **Terminal Git workflow** - Git integration for visual feedback only
- **Modern Neovim features** - Lua, LSP, Treesitter
- **Keyboard-driven** - Efficient navigation without mouse

## Next Steps

Consider adding:
- `which-key.nvim` - Keybinding hints
- `mini.pairs` - Auto-close brackets
- `ror.nvim` - Rails-specific navigation