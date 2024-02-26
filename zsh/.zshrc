# CodeWhisperer pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.pre.zsh"
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
#
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="takashiyoshida"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    # git
    # zsh-autosuggestions
    # zsh-vi-mode
)

source $ZSH/oh-my-zsh.sh

#-------------------------------
# dev
#-------------------------------
alias k="kubectl"


alias gcm="git checkout main"
alias gc="git checkout"
alias gprm="git pull --rebase origin main"
alias gs="git stash"
alias gp="git stash pop"

#-------------------------------
# Cake by VPBank
#-------------------------------
function gorefresh() {
        GOPROXY=proxy.golang.org go run github.com/GoogleCloudPlatform/artifact-registry-go-tools/cmd/auth@latest refresh
}

function login() {
    gcloud auth login
}

function help_swe() {
  echo """
    develop
    stage
    production
    sass
    qa
    cake-dev
    cake-qa
    cake-stage
    cake-prod
  """
}

function swe() {
    if [[ "$2" != "" ]]; then
        NAMESPACE="$2"
    else
        NAMESPACE="default"
    fi

    case $1 in
    develop)
        gcloud config set project gam-project-cgd-x0l-zm4
        gcloud container clusters get-credentials bu1-k8s-dev --zone=asia-southeast1-a
        ;;
    stage)
        gcloud config set project veep-staging
        gcloud container clusters get-credentials default --zone=asia-southeast1-a
        ;;
    production)
          gcloud config set project veep-production
          gcloud container clusters get-credentials default --zone=asia-southeast1-a
        ;;
    saas)
          gcloud config set project veep-production
          gcloud container clusters get-credentials saas-1 --region=asia-southeast1
        ;;
    qa)
        gcloud config set project veep-staging
        gcloud container clusters get-credentials qa --zone=asia-southeast1-a
"~/.aliases" 50L, 1805B
        gcloud config set project veep-staging
        gcloud container clusters get-credentials qa --zone=asia-southeast1-a
      ;;
    cake-dev)
        gcloud config set project bef-cake-sandbox
        gcloud container clusters get-credentials cake-dev-2 --zone=asia-southeast1
      ;;
    cake-qa)
        gcloud config set project bef-cake-sandbox
        gcloud container clusters get-credentials cake-qa-1 --zone=asia-southeast1
        k config set-context --current --namespace=$NAMESPACE
      ;;
    cake-stage)
        gcloud config set project bef-cake-sandbox
        gcloud container clusters get-credentials cake-stage-1 --zone=asia-southeast1
        k config set-context --current --namespace=$NAMESPACE
      ;;
    cake-prod)
        gcloud config set project bef-cake-prod
        gcloud container clusters get-credentials cake-prod-1 --zone=asia-southeast1
        k config set-context --current --namespace=$NAMESPACE
      ;;
   help|*)
        help_swe
        ;;
    esac;
}

function help_db() {
  echo """
    mystage
    myqa
    pstage
    pqa
  """
}

function db() {
    case $1 in
    mystage)
        ./cloud-sql-proxy 'bef-cake-sandbox:asia-southeast1:cake-mysql8-stage?port=3310' --gcloud-auth
        ;;
    myqa)
        ./cloud-sql-proxy 'bef-cake-sandbox:asia-southeast1:cake-mysql8-qa?port=3308' --gcloud-auth
        ;;
    pstage)
        ./cloud-sql-proxy 'bef-cake-sandbox:asia-southeast1:cake-postgresql-stage-master?port=5433' --gcloud-auth
        ;;
    pqa)
        ./cloud-sql-proxy 'bef-cake-sandbox:asia-southeast1:cake-postgresql-qa-master?port=5432' --gcloud-auth
        ;;
   help|*)
        help_db
        ;;
   esac;
}


#-------------------------------
# Export command
#-------------------------------
export GONOPROXY=github.com/GoogleCloudPlatform/artifact-registry-go-tools
export GOPROXY=https://proxy.golang.org,https://asia-southeast1-go.pkg.dev/cake-ci/go-cake,direct
export GOSUMDB=off
export USE_GKE_GCLOUD_AUTH_PLUGIN=True

export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"


# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/sang.duong/Documents/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/sang.duong/Documents/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/sang.duong/Documents/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/sang.duong/Documents/google-cloud-sdk/completion.zsh.inc'; fi

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh

[[ $commands[kubectl] ]] && source <(kubectl completion zsh)
autoload -U compinit; compinit

#-------------------------------
# Znap and plugin
# Download Znap, if it's not there yet.
#-------------------------------
[[ -r ~/Repos/znap/znap.zsh ]] ||
    git clone --depth 1 -- \
        https://github.com/marlonrichert/zsh-snap.git ~/Repos/znap
source ~/Repos/znap/znap.zsh  # Start Znap

znap source marlonrichert/zsh-autocomplete

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# CodeWhisperer post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/codewhisperer/shell/zshrc.post.zsh"
