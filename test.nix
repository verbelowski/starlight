wayland.windowManager.hyprland.settings = {
  monitor = ",preferred,auto,auto";

  programs = {
    terminal = "kitty";
    fileManager = "dolphin";
    menu = "wofi --show drun";
  };

  autostart = [
    # przykładowe procesy
    # "nm-applet &"
    # "waybar &"
  ];

  env = {
    XCURSOR_SIZE = "24";
    HYPRCURSOR_SIZE = "24";
  };

  general = {
    gaps_in = 5;
    gaps_out = 20;
    border_size = 2;
    resize_on_border = false;
    allow_tearing = false;
    layout = "dwindle";
  };

  decoration = {
    rounding = 10;
    rounding_power = 2;
    active_opacity = 1.0;
    inactive_opacity = 1.0;
    shadow = {
      enabled = true;
      range = 4;
      render_power = 3;
      color = "rgba(1a1a1aee)";
    };
    blur = {
      enabled = true;
      size = 3;
      passes = 1;
      vibrancy = 0.1696;
    };
  };

  animations = {
    enabled = true;
    bezier = [
      [ "easeOutQuint" 0.23 1 0.32 1 ]
      [ "easeInOutCubic" 0.65 0.05 0.36 1 ]
      [ "linear" 0 0 1 1 ]
      [ "almostLinear" 0.5 0.5 0.75 1 ]
      [ "quick" 0.15 0 0.1 1 ]
    ];
    animation = [
      [ "global" 1 10 "default" ]
      [ "border" 1 5.39 "easeOutQuint" ]
      [ "windows" 1 4.79 "easeOutQuint" ]
      [ "windowsIn" 1 4.1 "easeOutQuint" "popin 87%" ]
      [ "windowsOut" 1 1.49 "linear" "popin 87%" ]
      [ "fadeIn" 1 1.73 "almostLinear" ]
      [ "fadeOut" 1 1.46 "almostLinear" ]
      [ "fade" 1 3.03 "quick" ]
      [ "layers" 1 3.81 "easeOutQuint" ]
      [ "layersIn" 1 4 "easeOutQuint" "fade" ]
      [ "layersOut" 1 1.5 "linear" "fade" ]
      [ "fadeLayersIn" 1 1.79 "almostLinear" ]
      [ "fadeLayersOut" 1 1.39 "almostLinear" ]
      [ "workspaces" 1 1.94 "almostLinear" "fade" ]
      [ "workspacesIn" 1 1.21 "almostLinear" "fade" ]
      [ "workspacesOut" 1 1.94 "almostLinear" "fade" ]
      [ "zoomFactor" 1 7 "quick" ]
    ];
  };

  dwindle = {
    pseudotile = true;
    preserve_split = true;
  };

  master = { new_status = "master"; };

  misc = {
    force_default_wallpaper = -1;
    disable_hyprland_logo = false;
  };

  input = {
    kb_layout = "us";
    follow_mouse = 1;
    sensitivity = 0;
    touchpad = { natural_scroll = false; };
  };

  gesture = [3 "horizontal" "workspace"];

  devices = [
    { name = "epic-mouse-v1"; sensitivity = -0.5; }
  ];

  mainMod = "SUPER";

  keybindings = [
    { key = "$mainMod+Q"; action = "exec $terminal"; }
    { key = "$mainMod+C"; action = "killactive"; }
    { key = "$mainMod+M"; action = "exit"; }
    { key = "$mainMod+E"; action = "exec $fileManager"; }
    { key = "$mainMod+V"; action = "togglefloating"; }
    { key = "$mainMod+R"; action = "exec $menu"; }
    { key = "$mainMod+P"; action = "pseudo"; }
    { key = "$mainMod+J"; action = "togglesplit"; }
    { key = "$mainMod+left"; action = "movefocus l"; }
    { key = "$mainMod+right"; action = "movefocus r"; }
    { key = "$mainMod+up"; action = "movefocus u"; }
    { key = "$mainMod+down"; action = "movefocus d"; }
    { key = "$mainMod+1"; action = "workspace 1"; }
    { key = "$mainMod+2"; action = "workspace 2"; }
    { key = "$mainMod+3"; action = "workspace 3"; }
    { key = "$mainMod+4"; action = "workspace 4"; }
    { key = "$mainMod+5"; action = "workspace 5"; }
    { key = "$mainMod+6"; action = "workspace 6"; }
    { key = "$mainMod+7"; action = "workspace 7"; }
    { key = "$mainMod+8"; action = "workspace 8"; }
    { key = "$mainMod+9"; action = "workspace 9"; }
    { key = "$mainMod+0"; action = "workspace 10"; }
    { key = "$mainMod+SHIFT+1"; action = "movetoworkspace 1"; }
    { key = "$mainMod+SHIFT+2"; action = "movetoworkspace 2"; }
    { key = "$mainMod+SHIFT+3"; action = "movetoworkspace 3"; }
    { key = "$mainMod+SHIFT+4"; action = "movetoworkspace 4"; }
    { key = "$mainMod+SHIFT+5"; action = "movetoworkspace 5"; }
    { key = "$mainMod+SHIFT+6"; action = "movetoworkspace 6"; }
    { key = "$mainMod+SHIFT+7"; action = "movetoworkspace 7"; }
    { key = "$mainMod+SHIFT+8"; action = "movetoworkspace 8"; }
    { key = "$mainMod+SHIFT+9"; action = "movetoworkspace 9"; }
    { key = "$mainMod+SHIFT+0"; action = "movetoworkspace 10"; }
    { key = "$mainMod+S"; action = "togglespecialworkspace magic"; }
    { key = "$mainMod+SHIFT+S"; action = "movetoworkspace special:magic"; }
    { key = "$mainMod+mouse_down"; action = "workspace e+1"; }
    { key = "$mainMod+mouse_up"; action = "workspace e-1"; }
  ];

  mousebindings = [
    { key = "$mainMod+mouse:272"; action = "movewindow"; }
    { key = "$mainMod+mouse:273"; action = "resizewindow"; }
  ];

  multimedia = [
    { key = "XF86AudioRaiseVolume"; action = "exec wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"; }
    { key = "XF86AudioLowerVolume"; action = "exec wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"; }
    { key = "XF86AudioMute"; action = "exec wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"; }
    { key = "XF86AudioMicMute"; action = "exec wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"; }
    { key = "XF86MonBrightnessUp"; action = "exec brightnessctl -e4 -n2 set 5%+"; }
    { key = "XF86MonBrightnessDown"; action = "exec brightnessctl -e4 -n2 set 5%-"; }
    { key = "XF86AudioNext"; action = "exec playerctl next"; }
    { key = "XF86AudioPause"; action = "exec playerctl play-pause"; }
    { key = "XF86AudioPlay"; action = "exec playerctl play-pause"; }
    { key = "XF86AudioPrev"; action = "exec playerctl previous"; }
  ];

  windowrules = [
    { rule = "suppressevent maximize, class:.*"; }
    { rule = "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"; }
  ];
};
