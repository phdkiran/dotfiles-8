# fish_vi_mode
# setting fish_vi_mode makes things ugly
# instead we just use the keybinding without starting the mode
# set -g fish_key_bindings fish_vi_key_bindings

function kbdngs
    fish_vi_key_bindings
    bind -M insert -m default fd force-repaint
    bind -M insert \cr 'peco_select_history (commandline -b)'
    bind -M insert ! __history_previous_command
    bind -M insert '$' __history_previous_command_arguments
end

set -g fish_key_bindings kbdngs
