#!/bin/sh
set -e
# Install the GPG key:
sudo 							\
	rpm -v						\
		--import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
# Stable
sudo
	zypper addrepo				\
		-g						\
		-f https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
# Dev
# sudo zypper addrepo -g -f https://download.sublimetext.com/rpm/dev/x86_64/sublime-text.repo
sudo
	zypper install sublime-text

sudo
	zypper install				\
		zsh						\
		miller					\
		jq						\
		ocaml					\
		opam					\
		python3					\
		python3-bandit			\
		python3-ipython			\
		python3-jupyter			\
		pyenv					\
		pyenv-zsh-completion	\
		git-core				\
		clang					\
		golang					\
		curl
[ -f "./opam.init.sh" ] && sh ./opam.init.sh
[ -f "./fzf.install.sh" ] && sh ./fzf.install.sh
[ -f "./liquidprompt.install.sh" ] && sh ./liquidprompt.install.sh
