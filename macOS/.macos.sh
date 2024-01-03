#!/usr/bin/env bash

# Close any open System Preferences panes, to prevent them from overriding:
# settings we’re about to change
osascript -e 'tell application "System Preferences" to quit'

# Ask for the administrator password upfront:
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.macos` has finished:
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &



#-----------------------------------------------------------------------------
#- Wi-Fi
#-----------------------------------------------------------------------------

# Turn Wi-Fi off:
do shell script "networksetup -setairportpower en0 off"

# Turn 'Ask to join networks' off:
do shell script "networksetup -setairportjoin en0 off"

# Turn 'Ask to join hotspots' off:
do shell script "networksetup -setairportautojoin en0 off"

# Turn 'Require administrator authorization to change networks' off:
do shell script "networksetup -setrequireadminauthorization en0 off"

# Turn 'Require administrator authorization to turn Wi-Fi on or off' off:
do shell script "networksetup -setrequireadminauthorization en0 turnoff"

# Turn 'Require administrator authorization to show legacy networks and options' off:
do shell script "networksetup -setlegacyauth en0 off"



#-----------------------------------------------------------------------------
#- Bluetooth
#-----------------------------------------------------------------------------

# Turn on Bluetooth:
do shell script "blueutil -p 1"



#-----------------------------------------------------------------------------
#- Network
#-----------------------------------------------------------------------------

# Turn Firewall off:
do shell script "sudo /usr/libexec/ApplicationFirewall/socketfilterfw --setglobalstate off"



#-----------------------------------------------------------------------------
#- Notifications
#-----------------------------------------------------------------------------

# --- Here we are my friend ;)



#-----------------------------------------------------------------------------
#- Desktop & Dock Settings
#-----------------------------------------------------------------------------

#-------------------------------------------------------------
#- Dock

tell application "System Events"
    tell dock preferences
        # Set dock size on 10%:
        set properties to {dock size:0.1}
        # Disable magnification:
        set magnification to false
        # Set position on bottom:
        set properties to {screen edge:bottom}
        # Set 'Minimise windows using' on 'Genie Effect':
        set minimize effect to genie
        # Turn 'Minimise windows into application icon' off:
        set properties to {minimize effect:"scale", minimize into application:false}
        # Hide dock automatically:
        set autohide to true
        # Turn 'Animate opening applications' off:
        set animate to false
        # Turn 'Show indicatiors for open applications' on:
        set properties to {show indicators:true}
        # Turn 'Show recent applications in Dock' off:
        set properties to {recent applications:false}



    end tell
    # Double-click a window's title bar means 'Zoom':
    tell application process "System Preferences"
        set frontmost to true
        tell window "Dock & Menu Bar"
            click checkbox 1 of tab group 1
            click radio button "Zoom" of radio group 1 of tab group 1
        end tell
    end tell
    # Disable 'Open at login' option for all apps:
    set loginItems to get the login items
    repeat with loginItem in loginItems
        tell loginItem
            set properties to {hidden:true}
        end tell
    end repeat
    # Disable 'Keep in Dock' option for all apps:
    set dockItems to get the properties of every dock preferences
    repeat with dockItem in dockItems
        tell dockItem
            set properties to {display in dock:false}
        end tell
    end repeat




end tell


#-------------------------------------------------------------
#- Menu Bar

tell application "System Events"
    # Hide menu bar automatically:
    tell appearance preferences
        set autohide menu bar to true
    end tell
    # Set 'Recent documents, applications and servers' on 'none':
    tell dock preferences
        set properties to {recent applications limit:0}
    end tell
end tell


#-------------------------------------------------------------
#- Windows & Apps

tell application "System Events"
    tell dock preferences
        # Set 'Prefer tabs when opening documents' on 'always':
        set properties to {prefer tabs:true}
        # Turn 'Ask to keep changes when closing documents' on:
        set properties to {ask to save:true}
        # Turn 'Close windows when quitting an application' on:
        set properties to {quit when all windows are closed:true}
        # TURN STAGE MANAGER OFF ?????
    end tell
    # Set Google Chrome as default browser (must be installed before):
    tell application "Google Chrome" to set isRegistered as default browser
    if isRegistered then
        return
    else
        set appPath to POSIX path of (path to application "Google Chrome")
        tell dock preferences
            set properties to {default web browser:appPath}
        end tell
    end if
end tell


#-------------------------------------------------------------
#- Mission Control

tell application "System Events"
    tell dock preferences
        # Turn 'Automatically rearrange Spaces based on most recent use' off:
        set properties to {mru spaces:false}
        # Turn 'When switching to an application, switch to a Space with open windows for the application' on:
        set properties to {appExpose:true}
        # Turn 'Group windows by application' off:
        set properties to {prefer tabs:false}
        # Turn 'Displays have separate Spaces' on:
        set properties to {spaces enabled:true}
        # Disable all 'Hot Corners...':
        set hot corners to {}
        # Set show/hide Mission Control shortcut to 'ctrl + arrow up': --> Maybe better in Shortcuts section?!
        set properties to {mission control modifier keys:control, mission control gesture:5}
        # Set show/hide application windows shortcut to 'ctrl + arrow down':
        set properties to {application windows modifier keys:control, application windows gesture:6}
        # SHOW DESKTOP SHORTCUT ?????
    end tell
end tell







set properties to {ask to save:true}

# Set desktop wallpaper to black:
tell application "System Events"
    tell every desktop
        set picture to "/System/Library/CoreServices/DefaultDesktop.jpg"
    end tell
end tell


# Set computer name (as done via System Preferences → Sharing):
sudo scutil --set ComputerName 'mba'
sudo scutil --set HostName "mba"
sudo scutil --set LocalHostName "mba"
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "mba"

# Disable the sound effects on boot:
sudo nvram SystemAudioVolume=" "

# Disable transparency in the menu bar and elsewhere:
defaults write com.apple.universalaccess reduceTransparency -bool true

# Set highlight color to green
# defaults write NSGlobalDomain AppleHighlightColor -string "0.764700 0.976500 0.568600"

# Set sidebar icon size to small
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 1

# Increase window resize speed for Cocoa applications
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# Expand save panel by default
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# Expand print panel by default
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Disable the “Are you sure you want to open this application?” dialog
defaults write com.apple.LaunchServices LSQuarantine -bool false

# Disable smart dashes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false

# Disable smart quotes as they’re annoying when typing code
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false

# Disable auto-correct
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false


###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
############################################################################### 

# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true

# Enable “natural” (Lion-style) scrolling
defaults write NSGlobalDomain com.apple.swipescrolldirection -bool true

# Increase sound quality for Bluetooth headphones/headsets
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en_US" "de"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=EUR"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Centimeters"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `sudo systemsetup -listtimezones` for other values
sudo systemsetup -settimezone "Europe/Berlin" > /dev/null












#-------------------------------------------------------------
#- Modes
