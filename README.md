# swhkd-vim

Vim / Neovim plugin to indent, highlight syntax and detect
[swhkd](https://github.com/waycrate/swhkd) configuration files.

swhkd files detected by this plugin are `swhkdrc` and files
with the `.swhkd` file extension.

## Installation

For [vim-plug](https://github.com/junegunn/vim-plug) users:

```vim
" vim-plug
plug 'waycrate/swhkd-vim'
```

In your `.vimrc` or `init.vim`, then restart Vim and run `:PlugInstall`.

Other plugin managers:

```vim
" packer.nvim
use 'waycrate/swhkd-vim'

" lazy
{ "waycrate/swhkd-vim", lazy = true }

" dein.vim
call dein#add('waycrate/swhkd-vim')

" NeoBundle
NeoBundle 'waycrate/swhkd-vim'

" minpac
call minpac#add('waycrate/swhkd-vim') 
```

![swhkd-vim example image](https://user-images.githubusercontent.com/39676098/156572456-9c5baf46-bee8-49d4-9c09-e6e75ea650ef.png)

