# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

feh --bg-scale ~/Pictures/grey.png

xmodmap -e 'keycode  49 = grave asciitilde grave asciitilde' 
xmodmap -e 'keycode  51 = underscore sterling underscore sterling' 
xmodmap -e 'keycode  94 = backslash bar backslash bar'

alias lr='ls -lhrt' 
alias lrt='ls -lhrt | tail' 
alias duh='du -hc -d 1' 
alias df='df -h' 
alias tre='tree -h | less' 
alias gcal='gcal -s 1' 