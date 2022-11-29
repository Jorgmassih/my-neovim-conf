# Personal NeoVim Configuration

## Installation
For installing the configuration you need to create a symlink or copy the `init.vim` file inside the project folder to your NeoVim configuration path.

```shell
cd my-neovim-conf
ln -s $(pwd)/init.vim $HOME/.config/nvim/init.vim

# Create a symlink for plugins configs
ln -s $(pwd)/plugins.vim $HOME/.config/nvim/plugins.vim

# Create a symlink for additional configs dir
ln -s $(pwd)/additional-conf $HOME/.config/nvim/additional-conf
```

## Using custom Python env
To use a custom Python env for nvim you must to create a new env with python.
```shell
python3 -m venv py_nvim_env
```

After that set `g:python3_host_prog = /path/to/python/`


> Note: [Vim-Plug](https://github.com/junegunn/vim-plug#neovim) must be installed in order to load pluggins properly.
