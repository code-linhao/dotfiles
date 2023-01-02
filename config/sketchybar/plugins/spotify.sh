osascript -e 'tell application "System Events"
        set processList to (name of every process)
end tell

if (processList contains "Spotify") is true then
        tell application "Spotify"
                set artistName to artist of current track
                set trackName to name of current track
		if (trackName = "Advertisement") is true then
			return trackName
		end if
		return trackName & " - " & artistName
        end tell
end if

return "None"'
