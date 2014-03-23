#! /bin/sh

[ -d "$HOME"/.bin ] || git clone -b macosx git@github.com:baskerville/bin.git "$HOME"/.bin
[ -d "$HOME"/.dotfiles ] || git clone -b macosx git@github.com:baskerville/dotfiles.git "$HOME"/.dotfiles

brew --version > /dev/null 2>&1 || ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

echo "Press *return* to continue"
read

brew update
brew upgrade
# brew install osxfuse ext4fuse
brew install git
brew install --build-from-source tmux
brew install reattach-to-user-namespace
brew install bash zsh
brew install wget openssl lftp
brew install vim deheader ctags
brew install rename trash duti urlview rlwrap
brew install node mongodb lua go ghc
brew install mpop msmtp mpack
brew install --HEAD --with-s-lang mutt
brew install --HEAD slrn
brew install newsbeuter
brew install base64 hunspell
brew install potrace sdl lhasa
brew install youtube-dl mediainfo 
brew install imagemagick ffmpeg
brew install flac cdrtools shntool cuetools
brew install aria2 mp4box pngnq
brew install detox duff catdoc ranger
brew install surfraw w3m elinks
brew install dict wordnet pwgen
brew install tree gifsicle libicns
# brew install ghostscript
# brew install pdfgrep

brew install python python3 ruby
pip3 install numpy colormath Pillow PyYAML misaka Jinja2 beautifulsoup4
pip install docutils PyPDF2
gem install chronic gpgme sup

brew tap mpv-player/mpv
brew install --HEAD mpv-player/mpv/libass-ct
brew install --HEAD --with-bundle --with-bluray-support --with-libdvdread --with-libquvi --with-little-cms2 --with-lua mpv
brew linkapps

brew tap homebrew/science
brew install maxima

brew tap phinze/cask
brew install brew-cask
# brew cask install chromium
brew cask install secrets keyremap4macbook
brew cask install flux caffeine spectacle quicksilver
brew cask install burn gimp
# brew cask install xquartz
# brew cask install inkscape audacity mactex
# sudo chown -R "$USER":admin /usr/local

brew tap caskroom/fonts
brew cask install font-dejavu font-courier-prime

brew tap telemachus/homebrew-desc
brew install brew-desc

brew tap baskerville/formulae
brew install z-go paps-bskv unlzx ppsei
brew install --with-minimal mldonkey-bskv
brew install --HEAD google-translate-cli spdf

open http://www.freesmug.org/chromium
open http://rapidshare.com/files/2591591009/Inkscape-r-10.7%2B-x86_64_RC5.dmg
# sudo dseditgroup -o edit -a ice -t user operator

mkdir "$HOME"/Library/LaunchAgents
for s in "$HOME"/.dotfiles/Library/LaunchAgents/* ; do
	plutil -convert xml1 -o "$HOME"/Library/LaunchAgents/"${s%.*}".plist "$s"
done
