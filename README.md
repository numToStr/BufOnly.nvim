> Lua/Neovim port of https://github.com/vim-scripts/BufOnly.vim with some changes

## BufOnly.nvim

Delete all the buffers except the current, not modified and modifiable buffer.

### Requirements

-   Neovim Nightly

### Install

With [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'numtostr/BufOnly.nvim', { 'on': 'BufOnly' }
```

### Usage

```
:BufOnly
```

### Simple config

```vim
nnoremap <silent> <leader>x :BufOnly<CR>
```
