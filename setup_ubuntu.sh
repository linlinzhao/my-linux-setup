#sudo pacman-mirrors --fasttrack 5 && sudo pacman -Syyu
#install yay for install packages from AUR
#sudo pacman -S base-devel yay

sudo apt update
sudo apt install neovim
sudo apt install vim

sudo apt install python-jedi
sudo apt install python2-jedi
sudo apt install python-neovim
sudo apt install python2-neovim
sudo apt install curl
sudo apt install zsh

#setup vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#setup vim-plug for neovim
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

cp ./zshrc ~/.zshrc
zsh

#change bash to zsh
chsh -s /usr/bin/zsh

# setup starship
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

curl -sS https://starship.rs/install.sh | sh
echo 'eval "$(starship init zsh)" ' >> ~/.zshrc 

cp ./vimrc ~/.vimrc
mkdir ~/.config/nvim
cp ./init.vim ~/.config/nvim/init.vim

#add configuration files .vimrc .zshrc .config/nvim/init.vim
#within nvim do ":PlugInstall"
#within vim do ":PluginInstall"

#set default vi
#sudo ln -s /usr/bin/vi /usr/bin/nvim

