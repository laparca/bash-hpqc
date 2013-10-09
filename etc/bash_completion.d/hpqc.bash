_hpqc() {
    COMPREPLY=()
	PLUGINGS="$(hpqc list-plugins)"
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

	COMPREPLY=( $(compgen -W "${PLUGINS}" -- "${cur}") )
	return 0
}
complete -o filenames -F _hpqc hpqc

# vim: set ft=sh tw=80 sw=4 et :
