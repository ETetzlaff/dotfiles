export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/Documents/go_stuffs"
export GOROOT="$HOME/Documents/go_stuffs"
export PATH="$PATH:/$GOROOT/bin"
alias git=hub


# Compares current branch against 'dev' branch to see what commits
# are not in both places.  Supply a branch name as an argument if you would
# like to compare against another upstream branch
function git_upstream() {
  upstream_branch=${1:-dev}
  echo "Branch \e[31m$(git rev-parse --abbrev-ref HEAD)\e[39m is \e[33m$(git rev-list --count ${upstream_branch}..) commits\e[39m ahead and \e[33m$(git rev-list --count ..${upstream_branch}) commits\e[39m behind \e[31m${upstream_branch}\e[39m"
}

export PIP_REQUIRE_VIRTUALENV=true

psql_deis()
{
    psql `DEIS_PROFILE=$1 deis config:list -a $2 | grep DATABASE_URL | while read c1 c2; do echo $c2; done`
}


# Setup employer specific environment
COMPANY_FILE="$HOME/.companyrc"
if [ -f $COMPANY_FILE ]; then
  . $COMPANY_FILE
fi
