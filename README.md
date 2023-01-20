# Zer0's dotfiles
These are my dotfiles

Copy and paste this in your terminal

## This is my neovim config :)
```
git clone https://github.com/Zer0dev-byte/dotfiles
cd dotfiles
mkdir -v ~/.config/
cp -v -r ./nvim ~/.config/
cp -v zshrc ~/.zshrc
```

## Some tmux
```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

## This is some git stuff
```
git config --global credential.helper store
```

# This is only if you need the vimtex compiler
```
sudo pacman -S texlive-most
sudo pacman -S zathura
sudo pacman -S zathura-pdf-poppler
sudo pacman -S zathura-ps
sudo pacman -S zathura-djvu

```

## Zsh stuff
```


sudo pacman -S zsh
sudo pacman -S zsh-completions
sudo pacman -S zsh-syntax-highlighting 
```
