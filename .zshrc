eval "$(starship init zsh)"
eval "$(zoxide init zsh)"
eval "$(/opt/homebrew/bin/brew shellenv)"


export PATH=/Users/zero/Library/Python/3.10/bin:$PATH
export PATH="/opt/homebrew/opt/llvm/bin:$PATH"
export PATH="$PATH:/Users/zero/.cargo/bin"
export PATH=/Users/zero/.local/bin:$PATH
export EDITOR=/opt/homebrew/bin/nvim

. "$HOME/.cargo/env"

#Cmatrix thing
alias matrix='cmatrix -s -C cyan'

#iso and version used to install ArcoLinux
alias iso="cat /etc/dev-rel | awk -F '=' '/ISO/ {print $2}'"

#systeminfo
alias probe="sudo -E hw-probe -all -upload"

# Replace ls with exa
alias ls='exa -l --color=always --group-directories-first --icons'  # long format
alias la='exa -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first --icons'  # long format
alias lt='exa -aT --color=always --group-directories-first --icons' # tree listing
alias l='exa -lah --color=always --group-directories-first --icons' # tree listing

#pacman unlock
alias unlock="sudo rm /var/lib/pacman/db.lck"

#available free memory
alias free="free -mt"

#continue download
alias wget="aria2c"

#readable output
alias df='df -h'

#Pacman for software managment
alias search='brew search'
alias remove='brew remove'
alias install='brew install'
alias update='brew upgrade'
alias clrcache='brew cleanup'

#quickly kill stuff
alias kc='killall conky'

#Bash aliases
alias mkfile='touch'
alias reload='source ~/.zshrc'
alias pingme='ping -c64 github.com'
alias cls='clear && neofetch'
alias traceme='traceroute github.com'

#youtube-dl
alias ytv-best='yt-dlp -f "bestvideo[ext=mp4]+bestaudio[ext=m4a]/bestvideo+bestaudio" --merge-output-format mp4 '

#GiT  command
alias gc='git clone --bare'
alias gcm='git commit -am'
alias 'git clone'='git clone --bare'

#userlist
alias userlist="cut -d: -f1 /etc/passwd"

#Copy/Remove files/dirs
alias rmd='rm -r'
alias srm='sudo rm'
alias srmd='sudo rm -r'
alias cpd='cp -R'
alias scp='sudo cp'
alias scpd='sudo cp -R'

#nvim
alias zshrc='nvim ~/.zshrc'

#cd/ aliases
alias etc='cd /etc/'
alias music='cd ~/Music'
alias vids='cd ~/Movies/'
alias conf='cd ~/.config'
alias desk='cd ~/Desktop'
alias pics='cd ~/Pictures'
alias dldz='cd ~/Downloads'
alias docs='cd ~/Documents'
alias dev='cd ~/Developer/'
alias school='cd ~/Documents/school/'
alias sapps='cd /usr/share/applications'
alias lapps='cd ~/.local/share/applications'
alias .nvim='cd ~/.config/nvim/'

#switch between lightdm and sddm
alias tolightdm="sudo pacman -S lightdm lightdm-gtk-greeter lightdm-gtk-greeter-settings --noconfirm --needed ; sudo systemctl enable lightdm.service -f ; echo 'Lightm is active - reboot now'"
alias tosddm="sudo pacman -S sddm --noconfirm --needed ; sudo systemctl enable sddm.service -f ; echo 'Sddm is active - reboot now'"

#Package Info
alias info='sudo pacman -Si '
alias infox='sudo pacman -Sii '
#
#shutdown or reboot
alias sr="sudo reboot"
alias ssn="sudo shutdown now"

#My aliases
alias vi=nvim
alias ripme="open /Applications/ripme.jar"
alias t7="cd /Volumes/T7"
alias gal=gallery-dl
alias tx=tmuxinator

alias crash=":(){:|:&};:"
alias python=python3
alias format="sudo diskutil eraseDisk FAT32 USB MBRFormat"

#NOTE: these are my functions

flash (){
    diskutil list
    diskutil unmountDisk /dev/"$2"
    sudo dd if=$1 | pv | sudo dd of=/dev/"$2" bs=1M
    sudo diskutil eject /dev/"$2"
}

cx() {cd "$@" && l;}

mkschool(){

dir=~/Documents/school/$1
mkdir $dir
cd $dir
cat << EOF > $1.tex
\documentclass[letterpaper,12pt]{article}

\setlength\parindent{0pt}

\renewcommand{\familydefault}{\sfdefault}

\usepackage[english]{babel}
\usepackage{blindtext}

\begin{document}

\title{\Large{\textbf{$1}}}
\author{Insert name here}
\date{Insert date here}

\maketitle



\end{document}
EOF

nvim $1.tex
}

tm(){
    sessions=$(tmux list-sessions -F "#S")

    # fuzzy find session with fzf
    session=$(echo $sessions | tr ' ' '\n' | gum filter)

    # attach to session
    tmux attach-session -t $session
}

dup() {
    typeset -a lines
    typeset -a counts
    lines=()
    counts=()
    while read line; do
        if [[ -n "$line" ]]; then
            if [[ ! " ${lines[@]} " =~ " ${line} " ]]; then
                lines+=("$line")
                counts+=("1")
            else
                index=0
                for i in $(seq 1 ${#lines[@]}); do
                    if [[ "${lines[$i]}" == "$line" ]]; then
                        index="$i"
                        break
                    fi
                done
                ((counts[$index]++))
            fi
        fi
    done < "$1"

  # Print out any lines that appear more than once, along with their counts
  for index in $(seq 1 ${#lines[@]}); do
      count="${counts[$index]}"
      if (( count > 1 )); then
          echo "${lines[$index]} appears $count times"
      fi
  done
}

4file (){
    # Check if a filename was provided as an argument
    if [[ -z "$1" ]];
    then
        echo "Please provide a filename as an argument"
    else
        while read -r line; do
            thread-archiver "$line"
        done < "$1"
    fi
}

# pnpm
export PNPM_HOME="/Users/zero/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
