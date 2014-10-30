#! /bin/sh

# Set the timezone; see `systemsetup -listtimezones` for possible values
# systemsetup -settimezone Europe/Paris

# Show the ~/Library folder.
chflags nohidden ~/Library

# Enable subpixel font rendering on non-Apple LCDs
defaults write -g AppleFontSmoothing -int 2

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write -g com.apple.mouse.tapBehavior -int 1
defaults write -g com.apple.mouse.tapBehavior -int 1

# Disable “natural” (Lion-style) scrolling
defaults write -g com.apple.swipescrolldirection -bool false

# Disable iOS style long key presses
defaults write -g ApplePressAndHoldEnabled -bool false

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write -g AppleKeyboardUIMode -int 3

# Finder: show all filename extensions
defaults write -g AppleShowAllExtensions -bool true

# Finder: show status bar
defaults write com.apple.finder ShowStatusBar -bool true

# Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# Disable the warning when changing a file extension
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write -g WebKitDeveloperExtras -bool true

# Avoid creating .DS_Store files on network volumes
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# Increase window resize speed for Cocoa applications
# defaults write -g NSWindowResizeTime -float 0.2

# Prevent Time Machine from prompting to use new hard drives as backup volume
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

# Expand save panel by default
defaults write -g NSNavPanelExpandedStateForSaveMode -bool true

# Expand print panel by default
defaults write -g PMPrintingExpandedStateForPrint -bool true

# Save to disk (not to iCloud) by default
defaults write -g NSDocumentSaveNewDocumentsToCloud -bool false

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Display ASCII control characters using caret notation in standard text views
defaults write -g NSTextShowsControlCharacters -bool true

# Set Help Viewer windows to non-floating mode
defaults write com.apple.helpviewer DevMode -bool true

# Menu bar: disable transparency
defaults write -g AppleEnableMenuBarTransparency -bool false

# Menu bar: show remaining battery time
# defaults write com.apple.menuextra.battery ShowTime -string "YES"

# Only use UTF-8 in Terminal.app
defaults write com.apple.terminal StringEncodings -array 4
 
# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true
 
# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Enable AirDrop over Ethernet and on unsupported Macs running Lion"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# Make Dock icons of hidden applications translucent
defaults write com.apple.dock showhidden -bool true

# Disable window animations and Get Info animations in Finder
defaults write com.apple.finder DisableAllAnimations -bool true

# Don't animate opening applications from the Dock
defaults write com.apple.dock launchanim -bool false

# Disable opening and closing window animations
defaults write -g NSAutomaticWindowAnimationsEnabled -bool false

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Skim: auto-hide closed side panels in fullscreen mode
defaults write -app Skim SKHideClosedFullScreenSidePanels -integer 1
