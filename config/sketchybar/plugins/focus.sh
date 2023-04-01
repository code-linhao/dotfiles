WINDOW_TITLE=$(yabai -m query --windows --window | jq -r '.title')
APP=$(yabai -m query --windows --window | jq -r '.app')
ICON=$($HOME/.config/sketchybar/plugins/icons.sh $APP)

sketchybar -m --set focus icon.drawing=on label.drawing=on

if [[ $APP = "Safari" ]]; then
  WINDOW_TITLE=${WINDOW_TITLE/, Private Browsing/""}
fi

if [[ $APP = "Discord" ]]; then
  WINDOW_TITLE=${WINDOW_TITLE/- Discord/""}
fi

if [[ $APP = "Microsoft Teams" ]]; then
  WINDOW_TITLE=${WINDOW_TITLE/| Microsoft Teams/""}
fi

if [[ $APP = "Obsidian" ]]; then
  WINDOW_TITLE=$(echo "${WINDOW_TITLE%%-*}")
fi

if [[ "$WINDOW_TITLE" == "http"* ]]; then
    WINDOW_TITLE=${WINDOW_TITLE#*//}
    WINDOW_TITLE=${WINDOW_TITLE%%/*}
    WINDOW_TITLE=${WINDOW_TITLE/www./""}
fi

if [[ ${#WINDOW_TITLE} -gt 50 ]]; then
  WINDOW_TITLE=$(echo "$WINDOW_TITLE" | cut -c 1-50)…
fi

if [[ $APP = "" ]]; then
  sketchybar -m --set focus icon.drawing=off label.drawing=off
  exit 0
fi

if [[ $APP = $WINDOW_TITLE ]]; then
  sketchybar -m --set focus label="$APP" icon="$ICON"
  exit 0
fi

if [[ $WINDOW_TITLE = "" ]]; then
    sketchybar -m --set focus label="$APP" icon="$ICON"
    exit 0
fi


if [[ $INFO = 0 ]]; then
    sketchybar -m --set focus background.padding_left=6
fi

if [[ $INFO = 1 ]]; then
    sketchybar -m --set focus background.padding_left=6
fi

if [[ $INFO = 2 ]]; then
    sketchybar -m --set focus background.padding_left=2
fi


sketchybar -m --set focus label="$APP / $WINDOW_TITLE"
sketchybar -m --set focus icon="$ICON"
