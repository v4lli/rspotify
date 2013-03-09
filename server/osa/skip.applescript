-- 08/03/2013 valli

set AppleScript's text item delimiters to ""
set spotify_active to false
set theString to "Not running Spotify"

tell application "Finder"
	if (get name of every process) contains "Spotify" then set spotify_active to true
end tell

if spotify_active then
	tell application "Spotify"
		next track
	end tell
end if

return
