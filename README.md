# Personal NeoVim Configuration

## Installation
For installing the configuration you need to create a symlink or copy the `init.vim` file inside the project folder to your NeoVim configuration path.

```shell
cd my-neovim-conf
ln -s $(pwd)/init.vim $HOME/.config/nvim/init.vim
```

## Using Windows clipboard for Neovim in WSL
You need `xclip` for copying, so make sure you have it [already installed](https://howtoinstall.co/en/xclip). For pasting we're going to use the Powershell built-in solution to get access to the windows clipboard.








```shell
#!/bin/bash
powershell.exe Get-Clipboard | tr -d "\r"
```
