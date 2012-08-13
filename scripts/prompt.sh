custom_prompt () {
  history -a
  history -c
  history -r

    PS1="\n${GREEN}\w\a${WHITE}\$ "
}

PROMPT_COMMAND=custom_prompt