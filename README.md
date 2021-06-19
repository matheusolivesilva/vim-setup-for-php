# VIM Setup for PHP
Use VIM like an IDE!
<div style="text-align:center"><img src="example.gif" /></div>

## Prerequesites
- PHP 7.4
- Composer
- NodeJS
- NPM

## Installing
- Clone and install NERDFonts https://github.com/ryanoasis/nerd-fonts in your operating system
- Install VimPlug (https://github.com/junegunn/vim-plug) and Vundle (https://github.com/VundleVim/Vundle.vim)
- Run :PlugInstall (from VimPlug) and after :PluginInstall (from Vundle)
- Configure PHP Language Server following the steps in this link: https://phpactor.readthedocs.io/en/master/lsp/vim.html
- Install exuberant-ctags, to makes the preservim/tagbar works correctly: 
```bash
sudo apt-get install exuberant-ctags -y
```

## Learning VIM
If you know nothing about VIM, you can learn in this links:
- Playground: https://www.openvim.com/
- YouTube Tutorial: https://www.youtube.com/watch?v=ggSyF1SVFr4
- My Anki deck (sorry, only in brazilian portuguese, this deck was created when a was a newbie in english language): https://ankiweb.net/shared/info/1827459756
