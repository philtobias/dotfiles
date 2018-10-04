#!/bin/bash


# to maintain cask ....
#     brew update && brew upgrade brew-cask && brew cleanup && brew cask cleanup`


# Install native apps

brew install caskroom/cask/brew-cask

# daily
brew cask install spectacle
brew cask install dropbox
brew cask install flux
brew cask install magicprefs

# dev
brew cask install sublime-text
brew cask install imagealpha
brew cask install imageoptim
brew cask install cyberduck
brew cask install mamp
brew cask install sequel-pro
brew cask install mongohub

# browsers
brew cask install google-chrome
brew cask install firefox

# less often
brew cask install spotify
brew cask install handbrake
brew cask install macdown
brew cask install adobe-photoshop-cc
brew cask install disk-inventory-x
brew cask install vlc
brew cask install garmin-express

# work
brew cask install slack
brew cask install virtualbox
brew cask install zoomus
brew cask install lastpass
