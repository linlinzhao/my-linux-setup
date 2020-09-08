sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syyu
#install yay for install packages from AUR
sudo pacman -S base-devel yay

yay neovim
yay vim
yay dropbox

sudo pacman -Syu python-jedi
sudo pacman -Syu python2-jedi
sudo pacman -Syu python-neovim
sudo pacman -Syu python2-neovim

sudo pacman -Syu zsh

#setup vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#setup vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#change bash to zsh
chsh -s /usr/bin/zsh

#add configuration files .vimrc .zshrc .config/nvim/init.vim
#within nvim do ":PlugInstall"
#within vim do ":PluginInstall"

#set default vi
sudo ln -s /usr/bin/vi /usr/bin/nvim

#set latex
yay textlive-most
#Neovim with vimtex as tex editor

#set chinese typing methods with Fcitx-cloudpinyin
sudo pacman -Syu fcitx fcitx-googlepinyin fcitx-im fcitx-configtool
#add the following lines in ~/.xinitrc
export GTK_IM_MODULE=fcitx
export QT_IM_MODULE=fcitx
export XMODIFIERS=@im=fcitx
#then logout and login, add "pinyin" as input methods, it should work. 
