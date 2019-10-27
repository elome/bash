#!/usr/bin/env bash

_rn () {

	local onlyonce=(--action --show --dryrun --help --version)

	#suggession=(--action --show --dryrun --recursive --directory --help --version) 

	if [ "${COMP_CWORD}" == 1 ]; then
		COMPREPLY=($(compgen -W "--action --show --dryrun --recursive --directory --help --version" -- "${COMP_WORDS[1]}"))
	else
		for i in "${COMP_WORDS[1]}"; do
			for j in "${!COMPREPLY[@]}"; do
				if [[ "${i}" == "${COMPREPLY[j]}" ]]; then
					unset 'COMPREPLY[j]'
				fi
				done
			done
		fi
		#
		#
		#		local j
		#		for i in "${COMP_WORDS[@]}"; do
		#			[[ $i && ${onlyonce[$i]} ]] || continue
		#			for j in "${!COMPREPLY[@]}"; do
		#				[[ ${COMPREPLY[j]} == "${i}" ]] && unset 'COMPREPLY[j]'
		#			done
		#		done

	}

	complete -F _rn rn
