BREW_PREFIX=`brew --prefix`
export PATH=$BREW_PREFIX/share/python:$BREW_PREFIX/bin/:$BREW_PREFIX/sbin:$PATH
export PYTHONPATH=$BREW_PREFIX/lib/python2.7/site-packages:$PYTHONPATH

# Load ~/.extra, ~/.bash_prompt, ~/.exports, ~/.aliases and ~/.functions
# ~/.extra can be used for settings you don’t want to commit
for file in ~/.{extra,bash_prompt,exports,aliases,functions}; do
	[ -r "$file" ] && source "$file"
done
unset file

# Case-insensitive globbing (used in pathname expansion)
shopt -s nocaseglob

# Prefer US English and use UTF-8
export LC_ALL="en_US.UTF-8"
export LANG="en_US"

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2)" scp sftp ssh

# Add tab completion for `defaults read|write NSGlobalDomain`
# You could just use `-g` instead, but I like being explicit
complete -W "NSGlobalDomain" defaults

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

##
# Your previous /Users/mstuart/.bash_profile file was backed up as /Users/mstuart/.bash_profile.macports-saved_2013-04-22_at_14:11:09
##

# MacPorts Installer addition on 2013-04-22_at_14:11:09: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


##
# Your previous /Users/mstuart/.bash_profile file was backed up as /Users/mstuart/.bash_profile.macports-saved_2013-04-22_at_14:12:50
##

# MacPorts Installer addition on 2013-04-22_at_14:12:50: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

#export PS1='\h:\w$ '
#export SUDO_PS1='\h:\w# '

export VIRTUAL_ENV_DISABLE_PROMPT=0
