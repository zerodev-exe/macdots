DIR=~/.config/
mkdir -v $DIR

echo -e "\e[32m\n\n\nThis is the neovim dir"
cp -v -r ./nvim $DIR
echo -e "\e[32m\n\n\nThis is for the zshrc"
cp -v zshrc ~/.zshrc
echo -e "\e[32m\n\n\nThis is for school"
sudo cp -v school.sh /opt/

 cd
 git clone https://github.com/gpakosz/.tmux.git
 ln -s -f .tmux/.tmux.conf
 cp .tmux/.tmux.conf.local .
