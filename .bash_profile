#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

export EDITOR=nvim
export MANPAGER="nvim +Man!"
export PATH=$PATH:/opt/clangd/bin
export PATH=$PATH:$HOME/opt/cross/bin
export PATH=$PATH:/home/zero/.cargo/bin
export _JAVA_AWT_WM_NONREPARENTING=1

