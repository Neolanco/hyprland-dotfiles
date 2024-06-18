# Kill all services first

sleep 10

killall ${serviceWallpaper}

pkill -f shellSBar

# wait a sec
sleep 5

# then restart everything

${serviceWallpaper} ${serviceWallpaperConf}

hyprctl dispatch exec "exec -a shellSBar  ${shellSBar} ${shellSBarConf}"
