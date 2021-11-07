# My nvim config files

**(English)**
"To use this configuration file on both vim and neovim or even on other operating systems with all plugins, it is necessary to install the plugin manager Vim-Plug.
 
**For Linux** (curl required)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

**For Linux with Neovim**
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw .githubusercontent.com/junegunn/vim-plug/master/plug.vim'

**For windows (PowerShell)**
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force

**For windows with Neovim**
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[ $null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

"After installing the plugin manager, move the configuration file to the folder corresponding to the version used and run the command "
**PlugInstall** - To install plugins
**PlugClean** - To uninstall plugins after removing or commenting out the corresponding line.

**(Português)**
# Meu arquivo de configuração do nvim
"Para utilizar este arquivo de configuração tanto no vim quanto no neovim ou, até mesmo em outros sistemas operacionais com todos os plugins, é necessário instalar o gerenciador de plugins Vim-Plug.
 
**Para Linux** (necessário o curl)
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

O arquivo **init.vim** deve ser renomeado para **.vimrc** e colocado na pasta principal do usuário **~/**

**Para o Linux com Neovim**
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

O arquivo **init.vim** deve ser colocado na pasta **~/.config/nvim** se a pasta não existir, ela precisa ser criada.

"**Para windows (PowerShell)**
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force

**Para o windows com Neovim**
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

"Após instalar o gerenciador de plugin, mova o arquivo de configuração para a pasta correspondente a versão utilizada e rode o comando " 
**PlugInstall** - Para instalar plugins
**PlugClean** - Para desinstalar plugins após ter removido ou comentado a linha correspondente.
