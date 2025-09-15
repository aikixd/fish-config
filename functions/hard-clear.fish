function hard-clear
    command clear         # or printf '\e[3J\e[H\e[2J'
    commandline -f repaint
end
