## Overview: vim-terramate

This plugin provides the following features:

* Syntax highlighting for terramate files (`*.tm.hcl` and `*.tm`)
* Language server integration with [terramate-ls](https://github.com/terramate-io/terramate/tree/main/cmd/terramate-ls) via [vim-lsp](https://github.com/prabirshrestha/vim-lsp)
* `:Terramate` command that runs terramate, with tab completion of subcommands.
* Shortcuts:
  - `<leader>tm` opens documentation of a `tm_*` function in the web browser

---

## Installation

* Install terramate-ls
  - `go install github.com/terramate-io/terramate/cmd/terramate-ls@latest`
  - Ensure `terramate-ls` is in your $PATH
* Install [vim-plug](https://github.com/junegunn/vim-plug)
    * Install [vim-lsp](https://github.com/prabirshrestha/vim-lsp)
    * Install [vim-terramate](https://github.com/terramate-io/vim-terramate)
    * Check the `Example vimrc configuration` section below if you are using
      vim-plug for the first time

### Example vimrc configuration

```vimscript
call plug#begin('~/.vim/plugged')
Plug 'prabirshrestha/vim-lsp'
Plug 'terramate-io/vim-terramate'
call plug#end()
```

---

## Usage

Settings are documented in the [help](doc).

---

## Credits

Syntax highlighting and indentation by Kevin Le (@bkad) based on prior work by
Larry Gilbert (@L2G).
The rest originally written by Mark Cornick <https://www.markcornick.com/> and
contributors listed below.
Licensed under the ISC license.

Thanks to the following contributors:

- michael j talarczyk (@mijit)
- Koji Nakayama (@knakayama)
- Kris (@kostecky)
- Okumura Takahiro (@hfm)
- Paul Forman (@pforman)
- Lowe Schmidt (@lsc)
- Mario Kozjak (@mkozjak)
