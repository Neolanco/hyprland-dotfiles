# fedora
## copr
    #sudo dnf -y copr enable eddsalkield/swaylock-effects
sudo dnf -y copr enable tofik/nwg-shell 
sudo dnf -y copr enable solopasha/hyprland

## Code Server
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
sudo sh -c 'echo -e "[code]\nname=Visual Studio Code\nbaseurl=https://packages.microsoft.com/yumrepos/vscode\nenabled=1\ngpgcheck=1\ngpgkey=https://packages.microsoft.com/keys/microsoft.asc" > /etc/yum.repos.d/vscode.repo'
dnf check-update

## install
sudo dnf -y install code hyprnome playerctl brightnessctl pavucontrol aylurs-gtk-shell

### nwg-shell stuff
sudo dnf -y install nwg-bar nwg-menu nwg-drawer papirus-icon-theme


# manual compile
## prerequisites
### dependencies
    #sudo dnf -y install go gtk3 gtk-layer-shell #probaply all with -devel
sudo dnf -y install go gtk3-devel gtk-layer-shell-devel pkg-config libcairo2-dev libcairo-gobject2-dev gobject-introspection-devel
sudo apk add go gtk3 gtk-layer-shell
sudo pacman -S go gtk3 gtk-layer-shell

### make dir
mkdir -p /neoservice/.cache/neoland/

## nwg-drawer-hyprland
git clone https://github.com/nwg-piotr/nwg-dock-hyprland.git /neoservice/.cache/neoland/nwg-drawer-hyprland
cd /neoservice/.cache/neoland/nwg-drawer-hyprland
make get
make build
sudo make install

## cleanup
### del dir
rm -rf /neoserice/.cache/neoland
