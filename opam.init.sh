#!/bin/sh
set -e

opam init
eval "$(opam env)"
opam install					\
	core						\
	utop						\
	async						\
	yojson						\
	core_extended				\
	core_bench cohttp			\
	async_graphics				\
	cryptokit					\
	menhir						\
	merlin
