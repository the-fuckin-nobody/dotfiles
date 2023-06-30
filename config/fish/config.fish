if status is-interactive
    source (/usr/bin/starship init fish --print-full-init | psub)
    set fish_greeting ""
    alias ls "exa -lh --icons --git --group-directories-first"
    # Commands to run in interactive sessions can go here
end
