# copy paste this file in bit by bit.
# don't run it.
  echo "do not run this script in one go. hit ctrl-c NOW"
  read -n 1


##############################################################################################################
###  backup old machine's key items

mkdir -p ~/migration/home
cd ~/migration

# what is worth reinstalling?
brew leaves      		> brew-list.txt    # all top-level brew installs
brew cask list 			> cask-list.txt
npm list -g --depth=0 	> npm-g-list.txt


# then compare brew-list to what's in `brew.sh`
#   comm <(sort brew-list.txt) <(sort brew.sh-cleaned-up)

# let's hold on to these

cp -R ~/.ssh ~/migration/home

cp /Library/Preferences/SystemConfiguration/com.apple.airport.preferences.plist ~/migration  # wifi

cp -R ~/Library/Services ~/migration # automator stuff

cp -R ~/Documents ~/migration

cp ~/.bash_history ~/migration # back it up for fun?

cp ~/.gitconfig ~/migration

cp -R ~/Library/Application\ Support/Cyberduck ~/migration

cp /etc/hosts ~/migration

# sublime text settings
cp -R ~/Library/Application\ Support/Sublime\ Text\ 3/Packages ~/migration


### end of old machine backup
##############################################################################################################


##############################################################################################################
### homebrew!

# (if your machine has /usr/local locked down (like google's), you can do this to place everything in ~/.homebrew
mkdir $HOME/.homebrew && curl -L https://github.com/mxcl/homebrew/tarball/master | tar xz --strip 1 -C $HOME/.homebrew
export PATH=$HOME/.homebrew/bin:$HOME/.homebrew/sbin:$PATH

# install all the things
./brew.sh
./brew-cask.sh

### end of homebrew
##############################################################################################################


##############################################################################################################
### install of common things
###

# Type `git open` to open the GitHub page or website for a repository.
npm install -g git-open
# trash as the safe `rm` alternative
npm install --global trash-cli


# setting up the sublime symlink
ln -sf "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" ~/bin/subl


###
##############################################################################################################



### install xcode command line tools
xcode-select --install


##############################################################################################################
### remaining configuration
###

# go read mathias, paulmillr, gf3, alraa's dotfiles to see what's worth stealing.

# prezto and antigen communties also have great stuff
#   github.com/sorin-ionescu/prezto/blob/master/modules/utility/init.zsh

# set up osx defaults
#   maybe something else in here https://github.com/hjuutilainen/dotfiles/blob/master/bin/osx-user-defaults.sh
sh .osx

###
##############################################################################################################


# install mac apps
# setup desktop wallpaper
