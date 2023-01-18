# Zer0's dotfiles
These are my dotfiles

Copy and paste this in your terminal
```
git clone https://github.com/Zer0dev-byte/dotfiles
cd dotfiles
mkdir -v ~/.config/
cp -v -r ./nvim ~/.config/
cp -v zshrc ~/.zshrc
```

```
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp .tmux/.tmux.conf.local .
```

```
# This is only if you need the vimtex compiler
sudo pacman -S texlive-most

#Zsh stuff

sudo pacman -S zsh
sudo pacman -S zsh-completions
sudo pacman -S zsh-syntax-highlighting 
sudo pacman -S arcolinux-zsh-git
sudo pacman -S oh-my-zsh-git

```
