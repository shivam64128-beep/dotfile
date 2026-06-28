# If not running interactively, don't do anything (leave this at the top of this file)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source ~/.local/share/omarchy/default/bash/rc

set -o vi

# Add your own exports, aliases, and functions here.
#
# Make an alias for invoking commands you use constantly
# alias p='python'
y() {
    yazi "$@"
}
bind -x '"\C-f": y'

b() {
    bluetui "$@"
}
bind -x '"\C-b": b'

a() {
    wiremix "$@"
}
bind -x '"\C-a": a'
