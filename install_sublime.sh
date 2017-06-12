#!/bin/bash

# install sublime_text_3 config files

cp sublime_text_3/Default\ \(Linux\).sublime-keymap ~/.config/sublime-text-3/Packages/User/Default\ \(Linux\).sublime-keymap

cp sublime_text_3/Ruby.sublime-settings ~/.config/sublime-text-3/Packages/User/Ruby.sublime-settings

cp sublime_text_3/Preferences.sublime-settings ~/.config/sublime-text-3/Packages/User/Preferences.sublime-settings

export PATH=/home/chris/apps/sublime_text_3:$PATH
