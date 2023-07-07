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


# Create a symlink for lua configs dir
ln -s $(pwd)/lua $HOME/.config/nvim/lua
```

## Using custom Python env
To use a custom Python interptreter for nvim you must to create a new env with python `venv` .
Using the root folder for vim configuration is recomended. Additionally, the `env` folder must be called `py_nvim_env`. 

```shell
NVIM_PYTHON_ENV=py_nvim_env
# Creates a new env file
python3 -m venv $NVIM_PYTHON_ENV
# Activare env file
source ./$NVIM_PYTHON_ENV/bin/activate
# Install neo vim python dependency
python -m pip install neovim
# Create symlink for python interptreter
ln -s $(pwd)/$NVIM_PYTHON_ENV $HOME/.config/nvim/$NVIM_PYTHON_ENV
# Deactivate environment (optionally)
deactivate
```
