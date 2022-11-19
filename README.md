# Personal NeoVim Configuration

## Installation
For installing the configuration you need to create a symlink or copy the `init.vim` file inside the project folder to your NeoVim configuration path.

```shell
cd my-neovim-conf
ln -s $(pwd)/init.vim $HOME/.config/nvim/init.vim
mkdir -p $HOME/.config/nvim/additional-conf # Creates dir for additional config files
ln -s $(pwd)/terminal_handler.vim $HOME/.config/nvim/additional-conf/terminal_handler.vim
```
> Note: [Vim-Plug](https://github.com/junegunn/vim-plug#neovim) must be installed in order to load pluggins properly.
