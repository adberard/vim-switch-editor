# Switch editor

> Other editors integration for [Vim] and [Neovim] users

## Installation

Add to your `vimrc`:

``` vim
zplug 'adberard/vim-switch-editor'
```

## Usage

``` vim
nmap <leader>ask <Plug>(kakoune)
vmap <leader>ask <Plug>(kakoune)
nmap <leader>ase <Plug>(emacs)
vmap <leader>ase <Plug>(emacs)
```

- From Kakoune: Press <kbd>Escape</kbd> to save and quit.
- From Emacs Press <kbd>space qq</kbd> to quit.

[Emacs]: https://emacs.org
[Kakoune]: https://kakoune.org
[Vim]: https://vim.org
[Neovim]: https://neovim.io
