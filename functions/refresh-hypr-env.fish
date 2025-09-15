function refresh-hypr-env
    if test -n "$TMUX"
        set -l new (tmux show-environment -g HYPRLAND_INSTANCE_SIGNATURE 2>/dev/null \
            | string replace -r '^HYPRLAND_INSTANCE_SIGNATURE=' '')
        if test -n "$new" -a "$HYPRLAND_INSTANCE_SIGNATURE" != "$new"
            set -gx HYPRLAND_INSTANCE_SIGNATURE $new
        end
    end
end
