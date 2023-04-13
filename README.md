# Zer0's dotfiles for his mac
These are my dotfiles for my mac :)

Copy and paste this in your terminal

### For my zshrc
```
git clone https://github.com/Zer0dev-byte/macdots.git && cp -v macdots/.* ~/
git clone -b lazy https://github.com/Zer0dev-byte/macdots ~/.config/nvim
```

### Some tmux
```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

### This is some git stuff
```
git config --global credential.helper store
```

### This is only if you need the vimtex compiler
```
brew install texlive zathura zathura-pdf-poppler zathura-ps zathura-djvu
```

### Zsh stuff
```
sudo pacman -S zsh zsh-syntax-highlighting
```

## These are my neovim configs

### This is if you want just the [lazy.nvim](https://github.com/folke/lazy.nvim) config
```
git clone -b lazy https://github.com/Zer0dev-byte/macdots ~/.config/nvim
```

### This is if you want just the [packer.nvim](https://github.com/wbthomason/packer.nvim) config
```
git clone -b packer https://github.com/Zer0dev-byte/macdots ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### This is my first neovim config :)
```
git clone -b vim-plug https://github.com/Zer0dev-byte/macdots ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
