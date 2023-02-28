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
Using the root folder for vim configuration is recomended. Additionally, the `env` folder must be called `py_nvim_env`. 

```shell
# Creates a new env file
python3 -m venv py_nvim_env
# Activare env file
source ./py_nvim_env/bin/activate
# Install neo vim python dependency
python -m pip install neovim
# Deactivate environment (optionally)
deactivate
```
