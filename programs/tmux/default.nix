{pkgs, ...}:
{
      programs.tmux = {
        enable = true;
        sensibleOnTop = true;
        shortcut = "k";
        plugins = with pkgs; [ 
          { 
            plugin = tmuxPlugins.catppuccin;
            extraConfig = ''
            set -g @catppuccin_window_default_text "#W"
            set -g @catppuccin_window_current_text "#W"
            '';
          }
        ];
        extraConfig = ''
          bind r source-file ~/.config/tmux/tmux.conf
          set -g default-terminal "tmux-256color"
          set -g mouse on
          set -g base-index 1
          set -g status-right ""
          setw -g pane-base-index 1
        '';
      };
}
