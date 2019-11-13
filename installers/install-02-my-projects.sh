# ====== Install Silence ========

# Get my silence repo
echo "Bitbucket password:"
curl --user iosifv -L -O https://bitbucket.org/iosifvigh/silence/get/master.zip

# Unzip the files
unzip master.zip

# Execute scripts
cd iosifvigh-silence-c6c038e8a63c/

echo "Enter Silence password (for .ssh)"
cd ssh/
sh ./unpack.sh
sh ./overwrite.sh
cd ..

echo "Enter Silence password (for .aws)"
cd aws/
sh ./unpack.sh
sh ./overwrite.sh
cd ..

echo "Enter Silence password (for .rclone)"
cd rclone/
sh ./unpack.sh
sh ./overwrite.sh
cd ..

# Delete Silence
cd ..
rm master.zip
rm -rf iosifvigh-silence-c6c038e8a63c/


# ====== Make Directories ========

# Change username if needed
TEMP_WWW="/home/iosif/www"

mkdir ${TEMP_WWW}

cd ${TEMP_WWW}
mkdir ${TEMP_WWW}/github
mkdir ${TEMP_WWW}/bitbucket
mkdir ${TEMP_WWW}/public
mkdir ${TEMP_WWW}/playground

# Github
cd ${TEMP_WWW}/github
git clone git@github.com:iosifv/terminal-toolbelt.git
git clone git@github.com:iosifv/toolbelt-boilerplate.git
git clone git@github.com:iosifv/iosifv-copy.git


# Bitbucket
cd ${TEMP_WWW}/bitbucket
git clone git@bitbucket.org:iosifvigh/silence.git
git clone git@bitbucket.org:iosifvigh/iosifv.git
git clone git@bitbucket.org:iosifvigh/casa4.co.uk.git
git clone git@bitbucket.org:iosifvigh/ragus.git
git clone git@bitbucket.org:iosifvigh/ragus-client.git
git clone git@bitbucket.org:iosifvigh/technical-interviews.git
git clone git@bitbucket.org:iosifvigh/work-folders.git
git clone git@bitbucket.org:iosifvigh/udemy.git
git clone git@bitbucket.org:iosifvigh/php-tutorials.git


# ====== Terminal SetUp ========

# terminal-toolbelt
cp ${TEMP_WWW}/github/terminal-toolbelt/installers/extras/.zshrc ~/.zshrc
echo "source ~/www/github/terminal-toolbelt/loader-ubuntu.sh" >> ~/.zshrc
source ~/.profile 
# zsh-syntax-hightlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# zsh-autosuggestions
git clone git://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
# powerlevel9k
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
# nerd-fonts
mkdir -p ~/.local/share/fonts
cd ~/.local/share/fonts && curl -fLo "Droid Sans Mono for Powerline Nerd Font Complete.otf" https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/DroidSansMono/complete/Droid%20Sans%20Mono%20Nerd%20Font%20Complete.otf
# Install more fonts

# tmux-config
cd ~
git clone git@github.com:gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
cp ~/www/github/terminal-toolbelt/installers/extras/tmux-conf/.tmux.conf.local ~/.tmux.conf.local 




# ====== Projects SetUp ========

# iosifv.com
cd ${TEMP_WWW}/bitbucket/iosifv
sh ${TEMP_WWW}/bitbucket/iosifv/build.sh

# Ragus
sh ${TEMP_WWW}/bitbucket/ragus/setup.sh


# Mesages at the end
echo ''
echo '!!! Set a powerline font in your Terminal application !!!'
