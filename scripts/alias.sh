alias ls='ls -G'
alias ll="ls -Glahs"
alias psgrep="ps aux | egrep -v egrep | egrep"
alias showip="curl http://f.simplesideias.com.br/ip.php; echo; ifconfig | grep broadcast | sed 's/.*inet \(.*\) netmask.*/\1/'"
alias lock="open /System/Library/Frameworks/ScreenSaver.framework/Versions/A/Resources/ScreenSaverEngine.app"
alias top="top -o cpu"
alias sublime="open -a '/Applications/Sublime Text 2.app'"
alias apache_restart="sudo apachectl restart"