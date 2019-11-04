#!/bin/sh

doas pkg_add			\
	git			\
	vis			\
	tor			\
	torsocks		\
	jq			\
	curl			\
	pup			\
	python-3.7.4		\
	py3-pip			\
	jupyter-notebook	\
	bash

ln -s ./cwmrc "$HOME/.cwmrc"
ln -s ./tmux.conf "HOME/.tmux.conf"
ln -s ./Xresources "HOME/.Xresources"
ln -s ./xsession "HOME/.xsession"
