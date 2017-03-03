#!/bin/sh

USAGE='[git-clean-options]'
LONG_USAGE=\
'git scrub				invoke "git clean -b -d -x"
git scrub [options]			add git-clean(1) options.'
OPTIONS_SPEC=

exec git clean -q -d -x "${@}"
