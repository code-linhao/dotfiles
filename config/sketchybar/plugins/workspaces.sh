SPACES=("main" "work" "dev")

for i in "${!SPACES[@]}"
do
  sid=$(($i+1))
  arr=()
  icons=""
  QUERY=""
  QUERY=$(yabai -m query --windows --space $sid | jq '.[].app')
  if grep -q "\"" <<< $QUERY; then
    while IFS= read -r line; do arr+=("$line"); done <<< "$QUERY"
    
    for i in "${!arr[@]}"
    do
    	icon=$(echo ${arr[i]} | sed 's/"//g')
  	icon=$($HOME/.config/sketchybar/plugins/icons.sh $icon)
        icons+="$icon  "
    done
  fi
  
  sketchybar -m --set space.$sid label="$icons"
done

if [[ $SELECTED == true ]]; then
	sketchybar -m --set $NAME icon.color=0xff282930 \
                	          label.color=0xff282930 \
				  background.border_color=0xffbd93f9 \
				  background.color=0xffbd93f9 
	exit 0
fi

sketchybar --set $NAME icon.color=0xffbd93f9 \
                       label.color=0xffbd93f9 \
                       background.border_color=0xff000000 \
		       background.color=0xff282930
