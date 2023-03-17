/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
(echo; echo 'eval "$(/opt/homebrew/bin/brew shellenv)"') >> /Users/linlinz/.zprofile\n    eval "$(/opt/homebrew/bin/brew shellenv)"

#use antigen for managing packages for zsh
brew install antigen
cp ./zshrc.mac ~/.zshrc
zsh

brew install neovim
brew install pyenv
brew install xz
pyenv install 3.10.10

brew tap homebrew/cask-fonts
brew install font-hack-nerd-font
# note the python path installed with brew


#setup vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

#setup vim-plug for neovim
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'



# setup starship
# mkdir -p ~/.local/share/fonts
# cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/HEAD/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf

# curl -sS https://starship.rs/install.sh | sh
# echo 'eval "$(starship init zsh)" ' >> ~/.zshrc 

# cp ./vimrc ~/.vimrc
mkdir $HOME/.config/nvim
cp ./init.vim ~/.config/nvim/init.vim

#add configuration files .vimrc .zshrc .config/nvim/init.vim
#within nvim do ":PlugInstall"
#within vim do ":PluginInstall"

#set default vi
#sudo ln -s /usr/bin/vi /usr/bin/nvim

