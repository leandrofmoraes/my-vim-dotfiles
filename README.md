##My nvim config file
"To use this configuration file on both vim and neovim or even on other operating systems with all plugins, it is necessary to install the plugin manager Vim-Plug.
 
"For Linux (curl required) - curl -fLo ~/.vim/autoload/plug.vim --create-dirs \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

"For Linux with Neovim - sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \ https://raw .githubusercontent.com/junegunn/vim-plug/master/plug.vim'

"For windows (PowerShell) - iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni $HOME/vimfiles/autoload/plug.vim -Force

"For windows with Neovim - iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |` ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[ $null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force

"After installing the plugin manager, move the configuration file to the folder corresponding to the version used and run the command "
"PlugInstall - To install plugins
" PlugClean - To uninstall plugins after removing or commenting out the corresponding line.
