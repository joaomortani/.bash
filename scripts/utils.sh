# reload source
reload() {
  source ~/.bash_profile;
}

# list directory after cd; also save the last directory
# and open it when a new tab is created.
cd() {
  builtin cd "${@:-$HOME}" && ls && pwd > $CDHISTORY;
}

if [ -f $CDHISTORY ]; then
  dir=$(cat $CDHISTORY)

  if [ -d "$dir" ]; then
    cd "$dir" && clear
  fi
fi

# highlight grep
g() { 
	grep -nwrsI --color $1 $2; 
}

# github repository cloning
# usage:
#  github repository          ~> will clone $USER repositories
#  github username repository ~> will clone someone else's
github() {
  if [ $# = 1 ]; then
    git clone git@github.com:$USER/$1.git;
    builtin cd $1 && ls;
  elif [ $# = 2 ]; then
    git clone git://github.com/$1/$2.git;
    builtin cd $2 && ls;
  else
    echo "Usage:";
    echo "  github <repo>    ~> will clone $USER's <repo>";
    echo "  github <user> <repo> ~> will clone <user>'s <repo>";
  fi
}

# Schedule alarm. Will display growl
# notification and beep.
#
#   $ alarm "now + 2 hours" "Your time has finished"
#
# Quotes required, sorry!
#
alarm() {
  echo "afplay /System/Library/Sounds/Basso.aiff && /usr/local/bin/growlnotify -t Alarm -s -d alarm -a /Applications/iCal.app -m '$2'" | at $1
}