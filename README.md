.emacs.d
========

You need emacs24 min for this config

How to change number of colors:
================================
Check number of colors:

$tput colors

or in emacs with command:
M-x list-colors-display

$sudo apt-get install ncurses-term

and stick the following in your ~/.bashrc and/or ~/.bash_profile:

export TERM=xterm-256color


How to install/update emacs on ubuntu:
===============================
$> sh update-emacs.sh

How to install emacs on fedora:

$> sudo yum update

$> sudo yum install emacs

