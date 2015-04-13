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
brew install tmux
brew install reattach-to-user-namespace
brew install bash zsh jshon
brew install unrar p7zip
brew install wget openssl lftp
brew install --disable-nls --without-ruby --without-perl --build-bottle vim
brew install --with-python3 --HEAD --build-bottle macvim
brew install deheader ctags
brew install asciidoc docbook docbook-xsl
brew install rename trash duti urlview rlwrap
brew install node mongodb lua go ghc
brew install mpop msmtp mpack
brew install --HEAD --with-s-lang --build-bottle mutt
brew install --HEAD --build-bottle slrn
brew install newsbeuter
brew install base64 bchunk hunspell
brew install potrace graphviz lhasa
brew install youtube-dl mediainfo 
brew install imagemagick ffmpeg
brew install flac cdrtools shntool cuetools
brew install aria2 mp4box pngnq
brew install mpd ncmpc streamripper
brew install detox duff tofrodos catdoc ranger
brew install surfraw w3m elinks
brew install dict wordnet
brew install tree pstree gifsicle libicns
brew install screenbrightness
# brew install ghostscript
# brew install pdfgrep

npm install -g gulp

brew install python python3 ruby
pip3 install numpy colormath Pillow PyYAML misaka Jinja2 beautifulsoup4 ephem husl
pip install docutils PyPDF2
gem install chronic gpgme sup
go get github.com/ericchiang/pup

brew tap baskerville/formulae
brew install z-go
brew install paps-bskv unlzx ppsei stest
brew install mldonkey-bskv
brew install --ignore-dependencies http://www.soimort.org/translate-shell/translate-shell.rb

brew tap mpv-player/mpv
brew install --HEAD --build-bottle libass-ct
brew install --HEAD --with-libbluray --with-libdvdread --build-bottle mpv
brew linkapps

brew tap homebrew/science
brew install maxima

brew tap fernandotcl/homebrew-fernandotcl
brew install monkeys-audio

brew install --HEAD --with-python --with-x --build-bottle fontforge
brew bottle vim
brew bottle --HEAD macvim mutt slrn libass-ct mpv fontforge

# open http://www.freesmug.org/chromium
# sudo dseditgroup -o edit -a ice -t user operator

mkdir "$HOME"/Library/LaunchAgents
for s in "$HOME"/.dotfiles/Library/LaunchAgents/* ; do
	plutil -convert xml1 -o "$HOME"/Library/LaunchAgents/"${s%.*}".plist "$s"
done
