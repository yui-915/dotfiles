# source global profile
source /etc/profile

# If not running interactively, don't do anything else
[[ $- != *i* ]] && return

# use fish as interactive shell
if [[ $(ps --no-header --pid=$PPID --format=comm) != "fish" && -z ${BASH_EXECUTION_STRING} ]]; then
  shopt -q login_shell && LOGIN_OPTION='--login' || LOGIN_OPTION=''
  exec fish $LOGIN_OPTION
fi
