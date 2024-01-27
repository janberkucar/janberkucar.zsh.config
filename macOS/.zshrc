#  ╔═╗╔═╗╦ ╦╦═╗╔═╗  ╔═╗╔═╗╔╗╔╔═╗╦╔═╗	- Janberk Ucar
#  ╔═╝╚═╗╠═╣╠╦╝║    ║  ║ ║║║║╠╣ ║║ ╦	- https://github.com/janberkucar/janberkucar.zsh.config
#  ╚═╝╚═╝╩ ╩╩╚═╚═╝  ╚═╝╚═╝╝╚╝╚  ╩╚═╝	- Last updated: Jan 27 2024

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="spaceship"
# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

#  ┌─┐┬  ┬ ┬┌─┐┬┌┐┌┌─┐
#  ├─┘│  │ ││ ┬││││└─┐
#  ┴  ┴─┘└─┘└─┘┴┘└┘└─┘
plugins=(
    git
    bundler
    dotenv
    rake
    rbenv
    ruby
    jsontools
    node
    pip
    web-search
    zsh-autosuggestions
    colored-man-pages
    colorize
    common-aliases
    copyfile
)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

#  ┌─┐┬  ┬┌─┐┌─┐
#  ├─┤│  │├─┤└─┐
#  ┴ ┴┴─┘┴┴ ┴└─┘

### Custom Aliases. =============================================

## Personal GitHub Aliases.
alias jnbk="cd Desktop/Codebase/JanberkUcar && ls"
alias jnbh="cd Desktop/Codebase/JanberkUcar/hyperledger.cello.starter"
alias jnbn="cd Desktop/Codebase/JanberkUcar/janberkucar.nvim.config"
alias jnbz="cd Desktop/Codebase/JanberkUcar/janberkucar.zsh.config"
alias jnbj="cd Desktop/Codebase/JanberkUcar/js8Call.communication"
alias jnbp="cd Desktop/Codebase/JanberkUcar/piton.technology.case.app"
alias jnbr="cd Desktop/Codebase/JanberkUcar/vocoapp-case-study"

## Jxion Aliases.
alias jxin="cd Desktop/Codebase/Jxion && ls"
alias jxiw="cd Desktop/Codebase/Jxion/jxion-web"
alias jxia="cd Desktop/Codebase/Jxion/jxion-app"

## Ustad Aliases.
alias ustd="cd Desktop/Codebase/UstadSoftware && ls"
alias ustu="cd Desktop/Codebase/UstadSoftware/ustadv4"

## Tabim Aliases
alias tabm="cd Desktop/Codebase/Tabim && ls"

## OctaSys Aliases.
alias octs="cd Desktop/Codebase/OctaSys && ls"
alias octa="cd Desktop/Codebase/OctaSys/atom-svelte-source"
alias octm="cd Desktop/Codebase/OctaSys/magicai"
alias octf="cd Desktop/Codebase/OctaSys/magicaiapp" 

## Vavacars Aliases.
alias vvcr="cd Desktop/Codebase/Vavacars && ls"
alias vvcf="cd Desktop/Codebase/Vavacars/B2C.WebUI"
alias vvct="cd Desktop/Codebase/Vavacars/dtc-automation"
alias vvce="cd Desktop/Codebase/Vavacars/EnzoAdmin"
alias vvca="cd Desktop/Codebase/Vavacars/B2C.AppointmentAPI"
alias vvco="cd Desktop/Codebase/Vavacars/B2C.OrdersAPI"
alias vvcc="cd Desktop/Codebase/Vavacars/B2C.CustomersAPI"

## Frumatic Aliases.
alias frmt="cd Desktop/Codebase/Frumatic && ls"
alias vtpf="cd Desktop/Codebase/Frumatic/vtp-frontend"
alias vtpb="cd Desktop/Codebase/Frumatic/vtp_backend"

## Local Project Aliases.
alias lcal="cd Desktop/Codebase/LocalProjects && ls"

# Git aliases.
alias gfod="git fetch origin dev"
alias gfom="git fetch origin main"
alias gpod="git pull origin dev"
alias gpom="git pull origin main"
alias gchp="git checkout -"
alias gchd="git checkout dev"
alias gchm="git checkout main"
alias gadd="git add ."
alias gcmt="git commit"
alias gpsh="git push"

# IDE aliases.
alias vscd="code ."
alias wbst="open-ide webstorm"

## NPM aliases.
alias npms="npm run start"
alias npmi="npm install"
alias npml="npm install --legacy-peer-deps"

## Yarn aliases.
alias yars="yarn start"
alias yarl="yarn start --legacy-peer-deps"

## NX aliases.
alias nxst="nx run-many --all --target=serve"

# Angular aliases.
alias ngst="ng serve --port 4200"
alias ngs1="ng serve --port 4201"
alias ngs2="ng serve --port 4202"

## Test Driven aliases.
alias ntest="npm run test"
alias ntstu="npm run test:update"

## Linting aliases.
alias nlint="npm run lint"
alias nlntf="npm run lint:fix"

## NPM Fix.
export PATH=~/.npm-global/bin:$PATH

# Laravel Env
export PATH="$PATH:$HOME/.config/composer/vendor/bin"

# Java_HOME
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH="$JAVA_HOME/bin:$PATH"

# ChatGPT
source "$HOME/.openai_key.zsh"

## Heap memory fix.
export NODE_OPTIONS=--max_old_space_size=8192

#  ┌─┐┬ ┬┌┬┐┌─┐  ┌─┐┌┬┐┌─┐┬─┐┌┬┐
#  ├─┤│ │ │ │ │  └─┐ │ ├─┤├┬┘ │ 
#  ┴ ┴└─┘ ┴ └─┘  └─┘ ┴ ┴ ┴┴└─ ┴ 
neofetch
