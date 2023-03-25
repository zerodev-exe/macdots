# Zer0's dotfiles
These are my dotfiles

Copy and paste this in your terminal

### For my zshrc
```
git clone https://github.com/Zer0dev-byte/dotfiles.git && cp -v dotfiles/.* ~/
git clone -b lazy https://github.com/Zer0dev-byte/dotfiles ~/.config/nvim
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
sudo pacman -S texlive-most zathura zathura-pdf-poppler zathura-ps zathura-djvu
```

### Zsh stuff
```
sudo pacman -S zsh
sudo pacman -S zsh-completions
sudo pacman -S zsh-syntax-highlighting
```

## These are my neovim configs

### This is if you want just the [lazy.nvim](https://github.com/folke/lazy.nvim) config
```
git clone -b lazy https://github.com/Zer0dev-byte/dotfiles ~/.config/nvim
```

### This is if you want just the [packer.nvim](https://github.com/wbthomason/packer.nvim) config
```
git clone -b packer https://github.com/Zer0dev-byte/dotfiles ~/.config/nvim
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

### This is my first neovim config :)
```
git clone -b vim-plug https://github.com/Zer0dev-byte/dotfiles ~/.config/nvim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```
