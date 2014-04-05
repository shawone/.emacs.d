.emacs.d
========

You need emacs24 min for this config

How to change number of colors:
================================
Check number of colors:

<code> tput colors </code>

or in emacs with command:
M-x list-colors-display

<code> sudo apt-get install ncurses-term </code>

and stick the following in your ~/.bashrc and/or ~/.bash_profile:

export TERM=xterm-256color


How to install/update emacs on ubuntu:
===============================
<code> sh update-emacs.sh </code>

How to install emacs on fedora:

<code> sudo yum update </code>

<code> sudo yum install emacs </code>

