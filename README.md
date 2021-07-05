> Lua/Neovim port of https://github.com/vim-scripts/BufOnly.vim with some changes

## BufOnly.nvim

Delete all the buffers except the current, not modified and modifiable buffer.

### Requirements

-   Neovim 0.5

### Install

- With [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use { "numtostr/BufOnly.nvim", "cmd": "BufOnly" }
```

- With [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'numtostr/BufOnly.nvim', { 'on': 'BufOnly' }
```

### Usage

```
:BufOnly
```

### Options

-   Delete non modifiable buffer like NERD_tree, `false` by default

```lua
vim.g.bufonly_delete_non_modifiable = true
```

### Simple config

```lua
vim.fn.nvim_set_keymap('n', '<leader>x', ':BufOnly<CR>', { noremap = true, silent = true })
```
