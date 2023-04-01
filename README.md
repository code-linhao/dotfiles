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
![Screenshot 2023-04-01 at 11 36 25](https://user-images.githubusercontent.com/110169665/229284434-0c33b6ed-f764-488e-89f6-9fd5103833e8.png)
![Screenshot 2023-04-01 at 11 37 14](https://user-images.githubusercontent.com/110169665/229284468-a422a46e-a092-49e4-955c-62d30ae7712a.png)
