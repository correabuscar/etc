#!/bin/bash

#thanks to <Alfr> on #gentoo freenode irc for "if you can get the flags each on its own line, you can find flags common to all by reducing with: sort | uniq -d"

cat /etc/portage/make.conf.additions* | grep -F CPU_FLAGS_X86 | grep -v '^#' | cut -d= -f2 | tr -d '"' | tr ' ' '\n' | sort | uniq -d | tr '\n' ' '; echo

