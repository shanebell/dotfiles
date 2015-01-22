export GRAILS_HOME=/usr/local/grails-2.1.0
export AWS_IAM_HOME=/usr/local/IAMCli-1.5.0
export JAVA_HOME=$(/usr/libexec/java_home)
export MVN_HOME=/usr/local/apache-maven-3.1.1
export BREW_HOME=$(brew --prefix)
export GEM_HOME=$(brew --prefix)
export ES_HOME=/usr/local/elasticsearch-1.2.2
export ANDROID_HOME=/usr/local/opt/android-sdk

# add to the path
export PATH=$BREW_HOME/opt/ruby/bin:$BREW_HOME/bin:$MVN_HOME/bin:$GRAILS_HOME/bin:$PATH:$AWS_IAM_HOME/bin:$ES_HOME/bin

# The next line updates PATH for the Google Cloud SDK.
source '/usr/local/google-cloud-sdk/path.bash.inc'

# The next line enables bash completion for gcloud.
source '/usr/local/google-cloud-sdk/completion.bash.inc'

# setup AWS credential file
export AWS_CREDENTIAL_FILE=$AWS_CLI_HOME/aws-credential

# setup history
export HISTSIZE=5000
export HISTCONTROL=ignoredups:erasedups
shopt -s histappend

# set vi as default editor
export EDITOR='vi'

# vi command line editing
set -o vi

# git autocomplete
if [ -f ~/.git-completion.bash ]; then
  source ~/.git-completion.bash
fi

# git prompt
if [ -f ~/.git-prompt.sh ]; then
	source ~/.git-prompt.sh
fi

# customise prompt
export PS1='\w$(__git_ps1 " (%s)")\$ '

# aliases
alias ls='ls -F'

# Say $1 if the most recently executed command returns an exit code of zero, otherwise say $2
# usage: <some command>; message "Say this on success" "Say this on failure"
function message() {
  
  # get the exit code of the most recently executed command
  export EXIT_CODE=$?

  # check args
  if [ $# -ne 2 ]; then
    echo "usage: message success_message failure_message"
    return -1
  fi

  if [ $EXIT_CODE -eq 0 ]; then
    say -v Zarvox $1
  else
    say -v Zarvox $2
  fi
}
