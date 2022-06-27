#!/bin/bash

echo "finder: show hidden files by default";
sudo defaults write com.apple.finder AppleShowAllFiles -bool true;

echo "finder: dont show harddrive on desktop";
sudo defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false;

echo "finder: dont show tags section in sidebar";
sudo defaults write com.apple.finder SidebarTagsSctionDisclosedState -bool false;

echo "finder: dont show iCloud section in sidebar";
sudo defaults write com.apple.finder SidebarShowingiCloudDesktop -bool false;
sudo defaults write com.apple.finder SidebarShowingSignedIntoiCloud -bool false;

echo "finder: show devices section in sidebar";
sudo defaults write com.apple.finder SidebarDevicesSectionDisclosedState -bool true;

echo "finder: show places section in sidebar";
sudo defaults write com.apple.finder SidebarPlacesSectionDisclosedState -bool true;

echo "finder: new window opens to home directory"
sudo defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}/";

echo "dock: remove everything pinned";
sudo defaults write com.apple.dock persistent-apps -array;

echo "dock: disable pinning";
sudo defaults write com.apple.dock static-only -bool true;

echo "dock: autohide on";
sudo defaults write com.apple.dock autohide -bool true;

echo "dock: setting size to smallish";
sudo defaults write com.apple.dock tilesize 36;

sudo killall Dock;