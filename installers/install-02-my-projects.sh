# ====== Install Silence ========

# Get my silence repo
echo "Bitbucket password:"
curl --user iosifv -L -O https://bitbucket.org/iosifvigh/silence/get/master.zip

# Unzip the files
unzip master.zip

# Execute scripts
cd iosifvigh-silence-ef4c52b7cd09/
echo "Enter Silence password"
sh ./unpack.sh
sh ./overwrite.sh

# Delete Silence
cd ..
rm master.zip
rm -rf iosifvigh-silence-ef4c52b7cd09/


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
git clone git@bitbucket.org:iosifvigh/technical-interviews.git
git clone git@bitbucket.org:iosifvigh/old-work-folders.git

# terminal-toolbelt
echo "source ~/www/github/terminal-toolbelt/loader-ubuntu.sh" >> ~/.zshrc


# iosifv.com
cd ${TEMP_WWW}/bitbucket/iosifv
composer install
npm install
cp .env.mysql .env
# php artisan 
# php artisan voyager:admin hi@iosifv.com --create

