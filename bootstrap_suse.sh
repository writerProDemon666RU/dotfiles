#!/bin/sh
set -e

# install sublime text
sudo 							\
	rpm -v						\
		--import https://download.sublimetext.com/sublimehq-rpm-pub.gpg
sudo
	zypper addrepo				\
		-g						\
		-f https://download.sublimetext.com/rpm/stable/x86_64/sublime-text.repo
sudo
	zypper install sublime-text

# install handy stuff
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
		go						\
		curl					\
		docker					\
		mosh

mkdir -p "$HOME/go/{bin,src}"

# sudoless docker
sudo							\
	usermod						\
	-a							\
	-G							\
	docker						\
	"$USER"

[ -f "./opam.init.sh" ] && sh ./opam.init.sh
[ -f "./fzf.install.sh" ] && sh ./fzf.install.sh
[ -f "./liquidprompt.install.sh" ] && sh ./liquidprompt.install.sh

# install https://brow.sh
curl							\
	-o /tmp/browsh.rpm			\
	-L https://github.com/browsh-org/browsh/releases/download/v1.5.0/browsh_1.5.0_linux_amd64.rpm
rpm								\
	-U							\
	-v							\
	-h /tmp/browsh.rpm

rm /tmp/browsh.rpm
