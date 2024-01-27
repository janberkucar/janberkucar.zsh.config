#  ╔═╗╔═╗╦ ╦╦═╗╔═╗  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗	- Janberk Ucar
#  ╔═╝╚═╗╠═╣╠╦╝║    ║  ║ ║║║║╠╣ ║║ ╦	- https://github.com/janberkucar/janberkucar.zsh.config
#  ╚═╝╚═╝╩ ╩╩╚═╚═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝	- Last updated: Jan 27 2024

#  ┬  ┬┌─┐┬─┐┌─┐
#  └┐┌┘├─┤├┬┘└─┐
#   └┘ ┴ ┴┴└─└─┘
export VISUAL='geany'
export EDITOR='nvim'
export TERMINAL='alacritty'
export BROWSER='firefox'
export HISTORY_IGNORE="(ls|cd|pwd|exit|sudo reboot|history|cd -|cd ..)"

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#  ┬  ┌─┐┌─┐┌┬┐  ┌─┐┌┐┌┌─┐┬┌┐┌┌─┐
#  │  │ │├─┤ ││  ├┤ ││││ ┬││││├┤ 
#  ┴─┘└─┘┴ ┴─┴┘  └─┘┘└┘└─┘┴┘└┘└─┘
autoload -Uz compinit

for dump in ~/.config/zsh/zcompdump(N.mh+24); do
  compinit -d ~/.config/zsh/zcompdump
done

compinit -C -d ~/.config/zsh/zcompdump

autoload -Uz add-zsh-hook
autoload -Uz vcs_info
precmd () { vcs_info }
_comp_options+=(globdots)

zstyle ':completion:*' verbose true
zstyle ':completion:*:*:*:*:*' menu select
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS} 'ma=48;5;197;1'
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*:warnings' format "%B%F{red}No matches for:%f %F{magenta}%d%b"
zstyle ':completion:*:descriptions' format '%F{yellow}[-- %d --]%f'
zstyle ':vcs_info:*' formats ' %B%s-[%F{magenta}%f %F{yellow}%b%f]-'

#  ┬ ┬┌─┐┬┌┬┐┬┌┐┌┌─┐  ┌┬┐┌─┐┌┬┐┌─┐
#  │││├─┤│ │ │││││ ┬   │││ │ │ └─┐
#  └┴┘┴ ┴┴ ┴ ┴┘└┘└─┘  ─┴┘└─┘ ┴ └─┘
expand-or-complete-with-dots() {
  echo -n "\e[31m…\e[0m"
  zle expand-or-complete
  zle redisplay
}
zle -N expand-or-complete-with-dots
bindkey "^I" expand-or-complete-with-dots

#  ┬ ┬┬┌─┐┌┬┐┌─┐┬─┐┬ ┬
#  ├─┤│└─┐ │ │ │├┬┘└┬┘
#  ┴ ┴┴└─┘ ┴ └─┘┴└─ ┴ 
HISTFILE=~/.config/zsh/zhistory
HISTSIZE=5000
SAVEHIST=5000

#  ┌─┐┌─┐┬ ┬  ┌─┐┌─┐┌─┐┬    ┌─┐┌─┐┌┬┐┬┌─┐┌┐┌┌─┐
#  ┌─┘└─┐├─┤  │  │ ││ ││    │ │├─┘ │ ││ ││││└─┐
#  └─┘└─┘┴ ┴  └─┘└─┘└─┘┴─┘  └─┘┴   ┴ ┴└─┘┘└┘└─┘
setopt AUTOCD              # change directory just by typing its name
setopt PROMPT_SUBST        # enable command substitution in prompt
setopt MENU_COMPLETE       # Automatically highlight first element of completion menu
setopt LIST_PACKED		   # The completion menu takes less space.
setopt AUTO_LIST           # Automatically list choices on ambiguous completion.
setopt HIST_IGNORE_DUPS	   # Do not write events to history that are duplicates of previous events
setopt HIST_FIND_NO_DUPS   # When searching history don't display results already cycled through twice
setopt COMPLETE_IN_WORD    # Complete from both ends of a word.

#  ┌┬┐┬ ┬┌─┐  ┌─┐┬─┐┌─┐┌┬┐┌─┐┌┬┐
#   │ ├─┤├┤   ├─┘├┬┘│ ││││├─┘ │ 
#   ┴ ┴ ┴└─┘  ┴  ┴└─└─┘┴ ┴┴   ┴
PROMPT='%B%F{blue}󰣇%f%b  %B%F{magenta}%n%f%b %B%F{red}%~%f%b${vcs_info_msg_0_}%b %(?.%B%F{green}✓.%F{red}✕)%f%b %B%F{green}%f%b '

#  ┌─┐┬  ┬ ┬┌─┐┬┌┐┌┌─┐
#  ├─┘│  │ ││ ┬││││└─┐
#  ┴  ┴─┘└─┘└─┘┴┘└┘└─┘
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#  ┌─┐┬ ┬┌─┐┌┐┌┌─┐┌─┐  ┌┬┐┌─┐┬─┐┌┬┐┬┌┐┌┌─┐┬  ┌─┐  ┌┬┐┬┌┬┐┬  ┌─┐
#  │  ├─┤├─┤││││ ┬├┤    │ ├┤ ├┬┘│││││││├─┤│  └─┐   │ │ │ │  ├┤ 
#  └─┘┴ ┴┴ ┴┘└┘└─┘└─┘   ┴ └─┘┴└─┴ ┴┴┘└┘┴ ┴┴─┘└─┘   ┴ ┴ ┴ ┴─┘└─┘
function xterm_title_precmd () {
	print -Pn -- '\e]2;%n@%m %~\a'
	[[ "$TERM" == 'screen'* ]] && print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-}\e\\'
}

function xterm_title_preexec () {
	print -Pn -- '\e]2;%n@%m %~ %# ' && print -n -- "${(q)1}\a"
	[[ "$TERM" == 'screen'* ]] && { print -Pn -- '\e_\005{g}%n\005{-}@\005{m}%m\005{-} \005{B}%~\005{-} %# ' && print -n -- "${(q)1}\e\\"; }
}

if [[ "$TERM" == (kitty*|alacritty*|termite*|gnome*|konsole*|kterm*|putty*|rxvt*|screen*|tmux*|xterm*) ]]; then
	add-zsh-hook -Uz precmd xterm_title_precmd
	add-zsh-hook -Uz preexec xterm_title_preexec
fi

#  ┌─┐┬  ┬┌─┐┌─┐
#  ├─┤│  │├─┤└─┐
#  ┴ ┴┴─┘┴┴ ┴└─┘
alias mirrors="sudo reflector --verbose --latest 5 --country 'United States' --age 6 --sort rate --save /etc/pacman.d/mirrorlist"

alias grub-update="sudo grub-mkconfig -o /boot/grub/grub.cfg"
alias mantenimiento="yay -Sc && sudo pacman -Scc"
alias purga="sudo pacman -Rns $(pacman -Qtdq) ; sudo fstrim -av"
alias update="paru -Syu --nocombinedupgrade"

alias vm-on="sudo systemctl start libvirtd.service"
alias vm-off="sudo systemctl stop libvirtd.service"

alias musica="ncmpcpp"

alias ls='lsd -a --group-directories-first'
alias ll='lsd -la --group-directories-first'

### Custom Aliases. =============================================

## Personal GitHub Aliases.
alias jnbk="cd Desktop/Codebase/JanberkUcar ls"
alias jnbh="cd Desktop/Codebase/JanberkUcar/hyperledger.cello.starter"
alias jnbn="cd Desktop/Codebase/JanberkUcar/janberk.ucar.nvim.config"
alias jnbz="cd Desktop/Codebase/JanberkUcar/janberk.ucar.zsh.config"
alias jnbj="cd Desktop/Codebase/JanberkUcar/j8Call.communication"
alias jnbp="cd Desktop/Codebase/JanberkUcar/piton.technology.case.app"
alias jnbr="cd Desktop/Codebase/JanberkUcar/vodoapp-case-study"

## Jxion Aliases.
alias jxin="cd Desktop/Codebase/Jxion ls"
alias jxiw="cd Desktop/Codebase/Jxion/jxion-web"
alias jxia="cd Desktop/Codebase/Jxion/jxion-app"

## Ustad Aliases.
alias ustd="cd Desktop/Codebase/UstadSoftware ls"
alias ustu="cd Desktop/Codebase/UstadSoftware/ustadv4"

## Tabim Aliases
alias tabm="cd Desktop/Codebase/Tabim ls"

## OctaSys Aliases.
alias octs="cd Desktop/Codebase/OctaSys ls"
alias octa="cd Desktop/Codebase/OctaSys/atom-svelte-source"
alias octm="cd Desktop/Codebase/OctaSys/magicai"
alias octf="cd Desktop/Codebase/OctaSys/magicaiapp" 

## Vavacars Aliases.
alias vvcr="cd Desktop/Codebase/Vavacars ls"
alias vvcf="cd Desktop/Codebase/Vavacars/B2C.WebUI"
alias vvct="cd Desktop/Codebase/Vavacars/dtc-automation"
alias vvce="cd Desktop/Codebase/Vavacars/EnzoAdmin"
alias vvca="cd Desktop/Codebase/Vavacars/B2C.AppointmentAPI"
alias vvco="cd Desktop/Codebase/Vavacars/B2C.OrdersAPI"
alias vvcc="cd Desktop/Codebase/Vavacars/B2C.CustomersAPI"

## Frumatic Aliases.
alias frmt="cd Desktop/Frumatic ls"
alias vtpf="cd Desktop/Frumatic/vtp-frontend"
alias vtpb="cd Desktop/Frumatic/vtp_backend"

## Local Project Aliases.
alias lcal="cd Desktop/LocalProjects ls"

## Git aliases.
alias gfod="git fetch origin develop"
alias gfom="git fetch origin main"
alias gpod="git pull origin develop"
alias gpom="git pull origin main"
alias gchp="git checkout -"
alias gchd="git checkout develop"
alias gchm="git checkout main"
alias gadd="git add ."
alias gcmt="git commit --amend --no-edit"
alias gpsh="git push"

## NPM aliases.
alias npms="npm run start"
alias npmi="npm install"
alias npml="npm install --legacy-peer-deps"

## Yarn aliases.
alias yars="yarn start"
alias yarl="yarn start --legacy-peer-deps"

## NX aliases.
alias nxst="nx run-many --all --target=serve"

## Angular aliases.
alias ngst="ng serve --port 4200 --configuration=development"
alias ngs1="ng serve --port 4201 --configuration=development"
alias ngs2="ng serve --port 4202 --configuration=development"

## Test Driven aliases.
alias ntest="npm run test"
alias ntstu="npm run test:update"

## Linting aliases.
alias nlint="npm run lint"
alias nlntf="npm run lint:fix"

## NPM Fix.
export PATH="${PATH}:${HOME}/npm/bin"

## Heap memory fix.
export NODE_OPTIONS=--max_old_space_size=8192
export PATH=~/.npm-global/bin:$PATH

# Laravel Env
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Java_HOME
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH="$JAVA_HOME/bin:$PATH"

# ChatGPT
source "$HOME/.openai_key.zsh"

#  ┌─┐┬ ┬┌┬┐┌─┐  ┌─┐┌┬┐┌─┐┬─┐┌┬┐
#  ├─┤│ │ │ │ │  └─┐ │ ├─┤├┬┘ │ 
#  ┴ ┴└─┘ ┴ └─┘  └─┘ ┴ ┴ ┴┴└─ ┴ 
$HOME/.local/bin/colorscript -r
