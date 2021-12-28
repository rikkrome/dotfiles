if status is-interactive
    # Commands to run in interactive sessions can go here
end
set fish_greeting ""


if type -q exa
  alias ll "exa -l -g"
  alias lla "ll -a"
  alias llt "exa -l -g --tree --level=2 --git-ignore --git"
end

alias vim "nvim"

#set -x FZF_DEFAULT_COMMAND 'rg --files --follow --hidden'

# React native 
set -x ANDROID_HOME $HOME/Library/Android/sdk
set -x PATH $PATH $ANDROID_HOME/emulator
set -x PATH $PATH $ANDROID_HOME/tools
set -x PATH $PATH $ANDROID_HOME/tools/bin
set -x PATH $PATH $ANDROID_HOME/platform-tools
set -x ANDROID_NDK_HOME $HOME/Library/Android/sdk/ndk/23.1.7779620
#set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-17.0.1.jdk/Contents/Home
set -x JAVA_HOME /Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home 
