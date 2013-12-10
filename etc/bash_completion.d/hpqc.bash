_hpqc() {
    local cur prev opts
    COMPREPLY=()
    #echo -e "\n.${COMP_WORDS[@]}."
	opts="$(hpqc --commands ${COMP_WORDS[@]:1})"
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"

	COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
	return 0
}
complete -F _hpqc hpqc

# vim: set ft=sh tw=80 sw=4 et :
