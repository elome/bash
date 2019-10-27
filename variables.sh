#!/bin/bash

declare -r GREP_COLORS='ms=1;38;5;208:sl=:cx=:fn=35:ln=32:bn=32:se=36'
declare -r TEST_REGEX='((?<!\w)[.](?!(\w+)$)|(?![_.])[[:blank:][:punct:]]|[A-Z])|[^\1[:word:]\p{L}.]'
#declare -r REGEX2='-e s/(?![.])[[:punct:][:blank:]]+/_/g;-e s/[.](?!\w+$)//g;-e tr/A-Z/a-z/;'
declare -r REGEX2="-e s#((?![.&'])[[:punct:][:blank:]])+#_#g;-e s#\'|(?<!\w)[.](?!\w+$)##g;-e tr#A-Z#a-z#;" # Testing
declare -r REGEX3='s/\&/and/g;s/\b_|_\b//g;s/[^._[:alnum:]]+/_/g;'

export GREP_COLORS
export TEST_REGEX
export REGEX2
export REGEX3

declare -rA Stat=( [success]=0 [multiple_flags]=1 [invalid_flag]=2 [no_action]=3 [no_directory]=4 [no_file]=5 [non_existent_directory]=6 [non_existent_file]=7 [already_exist]=8 [same_file]=9 [no_input]=10 )

export Stat
