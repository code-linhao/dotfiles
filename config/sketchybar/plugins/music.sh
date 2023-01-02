sleep 0.5

PLAYING=$(~/.config/sketchybar/plugins/spotify.sh)

if [[ $PLAYING != "None" ]]; then
        sketchybar --set $NAME label.drawing=on icon.drawing=on
	sketchybar --set $NAME label="$PLAYING"
else
	sketchybar --set $NAME label.drawing=off icon.drawing=off
fi
