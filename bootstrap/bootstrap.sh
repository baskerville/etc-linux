#! /bin/sh

[ -d "$HOME"/.bin ] || git clone -b macosx git@github.com:baskerville/bin.git "$HOME"/.bin
[ -d "$HOME"/.dotfiles ] || git clone -b macosx git@github.com:baskerville/dotfiles.git "$HOME"/.dotfiles

brew --version > /dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Press *return* to continue"
read

brew update
brew upgrade
# brew install osxfuse ext2fuse
brew install wget tmux openssl
brew install vim ctags rename rlwrap
brew install lua go ghc
brew install node mongodb
brew install mpop msmtp mpack
brew install --HEAD --with-s-lang mutt
brew install --HEAD slrn
brew install base64 hunspell
brew install potrace sdl
brew install youtube-dl mediainfo 
brew install imagemagick ffmpeg flac
brew install aria2 mp4box pngnq
brew install detox duff catdoc ranger
brew install surfraw w3m dict wordnet
brew install tree gifsicle libicns
# brew install ghostscript
# brew install pdfgrep

brew install python python3 ruby
pip3 install numpy colormath Pillow misaka Jinja2
pip install docutils PyPDF2
gem install chronic gpgme sup

brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install --HEAD --with-bundle --with-bluray-support --with-libdvdread --with-libquvi --with-little-cms2 --with-lua mpv
brew linkapps

brew tap phinze/cask
brew install brew-cask
# brew cask install chromium
brew cask install secrets keyremap4macbook quicksilver
brew cask install shiftit burn gimp
# brew cask install xquartz
# brew cask install inkscape audacity mactex
# sudo chown -R "$USER":admin /usr/local

brew tap caskroom/fonts
brew cask install font-dejavu font-fira-sans

brew tap baskerville/formulae
brew install z-go paps-bskv deheader mldonkey-bskv lhasa unlzx ppsei
brew install --HEAD google-translate-cli spdf

open http://d.pr/f/4zTK http://www.freesmug.org/chromium
