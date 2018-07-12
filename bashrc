# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if test -f $HOME/.gpg-agent-info && \
kill -0 `cut -d: -f 2 $HOME/.gpg-agent-info` 2>/dev/null; then
GPG_AGENT_INFO=`cat $HOME/.gpg-agent-info | cut -c 16-`
else
# No, gpg-agent not available; start gpg-agent
eval `gpg-agent --daemon --no-grab --write-env-file $HOME/.gpg-agent-info`
fi
export GPG_TTY=$(tty)
export GPG_AGENT_INFOi
tput bold;
export PS1="\[\e[1;35m\]{\[\e[1;36m\]\u@\h\[\e[1;35m\] \w\[\e[1;36m\]}\$ \[\e[0;33m\]"
export LS_COLORS='di=0;36'
export PATH=$JAVA_HOME/bin:$PATH

