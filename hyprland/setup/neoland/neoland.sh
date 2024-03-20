#basics
sudo dnf install -y hyprland swaybg
sudo apk add hyprland swaybg

# nice stuff
sudo dnf install -y fuzzel python-dasbus polkit-gnome wev kde-connect kde-connect-nautilus waybar pamixer wlogout pavucontrol cliphist wl-clipboard swaylock brillo
sudo apk add fuzzel polkit-gnome wev waybar pamixer wlogout pavucontrol cliphist wl-clipboard swaylock tofi playerctl brightnessctl pavucontrol brillo #python-dasbus kde-connect kde-connect-nautilus

#hyprpm
sudo dnf install -y cpio meson cmake g++
sudo apk add cpio meson cmake g++
hyprpm update

#plugins
hyprpm add https://github.com/DreamMaoMao/hycov
hyprpm add https://github.com/Duckonaut/split-monitor-workspaces

#hyprpm enable hycov
hyprpm enable split-monitor-workspaces
