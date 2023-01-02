### dotfiles.
Using the [Dracula](https://draculatheme.com) color theme and [yabai](https://github.com/koekeishiya/yabai) for window tiling.

Included [SketchyBar](https://github.com/FelixKratz/SketchyBar) config. Main Nerd font family is configurable and the [sketchybar-app-font](https://github.com/kvndrsslr/sketchybar-app-font) is required for application icons. Workspace names are also configurable.

The config uses custom events that should be added to your `.yabairc` file.

```
# sketchybar events (.yabairc)
yabai -m signal --add event=window_focused action="sketchybar -m --trigger window_focus &> /dev/null"
yabai -m signal -add event=window_minimized action="sketchybar -m --trigger window_focus &> /dev/null"
yabai -m signal --add event=window_title_changed action="sketchybar -m --trigger title_change &> /dev/null"
```
Paths used supposes SketchyBar files to be found in `$HOME/.config/sketchybar`. Amend if necessary.

Repository will be updated with more dotfiles.

### preview.
![Screenshot 2023-01-02 at 10 25 46](https://user-images.githubusercontent.com/110169665/210221818-a8d2b2d0-508e-4a41-9011-45c81a023a58.jpg)
![Screenshot 2023-01-02 at 10 25 06](https://user-images.githubusercontent.com/110169665/210221820-1189fa95-97ea-42eb-a314-8d912389cd35.jpg)
