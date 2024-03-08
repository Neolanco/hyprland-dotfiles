sudo dnf install -y hyprland
#sudo apk add hyprland mesa-dev cairo libinput pango hyprlang   gdb ninja gcc cmake meson libxcb xcb-proto xcb-util xcb-util-keysyms libxfixes libx11 libxcomposite libxrender pixman wayland-protocols cairo pango seatd libxkbcommon xcb-util-wm libinput libliftoff libdisplay-info cpio tomlplusplus #this is probaply overkill
sudo apk add wayland-dev cairo-dev libxkbcommon-dev libinput-dev pango-dev tomlplusplus-dev


rm ~/.config/hypr/hyprland.conf
cp /neoservice/Scripts/wm/hyprland/setup/one-time/hyprland.conf.example ~/.config/hypr/hyprland.conf

sudo dnf install -y cpio meson cmake hyprland-devel
hyprpm update

sudo apk add cmake cpio meson g++

rm -rf ~/.config/nwg-bar
rm -rf ~/.config/nwg-displays
rm -rf ~/.config/nwg-dock
rm -rf ~/.config/nwg-dock-hyprland
rm -rf ~/.config/nwg-drawer
rm -rf ~/.config/nwg-look
rm -rf ~/.config/nwg-panel
rm -rf ~/.config/swaync

ln -rs /neoservice/Scripts/wm/nwg/nwg-bar       ~/.config/nwg-bar        
ln -rs /neoservice/Scripts/wm/nwg/nwg-displays  ~/.config/nwg-displays   
ln -rs /neoservice/Scripts/wm/nwg/nwg-dock      ~/.config/nwg-dock       
ln -rs /neoservice/Scripts/wm/nwg/nwg-dock      ~/.config/nwg-dock-hyprland
ln -rs /neoservice/Scripts/wm/nwg/nwg-drawer    ~/.config/nwg-drawer     
ln -rs /neoservice/Scripts/wm/nwg/nwg-look      ~/.config/nwg-look       
ln -rs /neoservice/Scripts/wm/nwg/nwg-panel     ~/.config/nwg-panel    
ln -rs /neoservice/Scripts/wm/swaync            ~/.config/swaync


sudo dnf install -y freetype-devel cairo-devel pango-devel wayland-devel libxkbcommon-devel harfbuzz
sudo dnf install -y meson scdoc wayland-protocols-devel
rm -rf /neoservice/Scripts/setup/hyprland/tofi
git clone https://github.com/philj56/tofi.git /neoservice/Scripts/setup/hyprland/tofi
cd /neoservice/Scripts/setup/hyprland/tofi
meson build && ninja -C build install
rm -rf /neoservice/Scripts/setup/hyprland/tofi


sudo cp -r /neoservice/Scripts/wm/hyprland/setup/one-time/FantasqueSansMono /usr/local/share/fonts/FantasqueSansMono #text ont for rubyowo's waybar
sudo cp hyprland/setup/one-time/Octicons.ttf /usr/local/share/fonts/Octicons.ttf  #icon ont for rubyowo's waybar
fc-cache -f -v
