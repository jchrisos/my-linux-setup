# disable touchscreen in dell laptop on ubuntu
xinput disable "ELAN Touchscreen"

#==================================================
#exports

#show git branch
export PS1='\[\e[1;34m\]\u@ \w\[\e[32m\]$(__git_ps1)\[\e[0m\] \[\e[1;34m\]\n▶\[\e[0m\] '

#my projects folder set in CDPATH
export CDPATH='~/Projects'

export GRADLE_USER_HOME=~/.gradle

#==================================================
# functions and alias
function dcu() {
  docker-compose kill
  if [ -z "$1" ]; then
    docker-compose up --build
  else  
    docker-compose -f "$1" up
  fi
}

function dexec() {
  docker exec -it "$1" bash
}

function hardsub() {
  ffmpeg -i $1 -filter:v "subtitles=$2:force_style='FontName=FontSize=24,PrimaryColour=&H00ffff&'" outfile.mp4	
}

function change-time() {
  if [[ -z $1 ]]; then
	  timedatectl set-ntp 1
  else
	  timedatectl set-ntp 0
	  sudo date +%T%p -s $1
  fi
}

alias dck='docker-compose kill'
alias dps='docker ps --format "table {{.Names}}"'
alias dcmvn='docker-compose kill && mvn clean package -Dexclude.devtools=false -U -DskipTests && docker-compose up --build'
alias ..='cd ..'
alias server='python -m SimpleHTTPServer 8000'
