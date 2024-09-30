if status is-interactive
  # Commands to run in interactive sessions can go here
  alias nvimex="XDG_CONFIG_HOME=~/.config/nvim-ex/ XDG_DATA_HOME=~/.local/share/nvim-ex/ XDG_RUNTRIME_DIR=/tmp/nvim-ex.$USER/ XDG_STATE_DIR=~/.local/state/nvim-ex/ nvim"
  alias config="/usr/bin/git -C $HOME/.config"

  set -g fish_ambiguous_width 2
  set -g fish_emoji_width 2

  # Keymaps
  set -g fish_key_bindings fish_vi_key_bindings
  set -g fish_cursor_insert line

  # Env
  set -gx MANPAGER 'nvim +Man!'
  set -gx MANWIDTH 999
  set -gx SUDO_EDITOR 'nvim'
else
  echo 'non-interactive'
end

# Move to local config
set -gx CUDACXX /usr/local/cuda-12.3/bin/nvcc
