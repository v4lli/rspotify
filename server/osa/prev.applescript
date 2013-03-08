-- 08/03/2013 valli


on linkinuscmd(cmd)
	set AppleScript's text item delimiters to ""
	set spotify_active to false
	set theString to "Not running Spotify"
	
	tell application "Finder"
		if (get name of every process) contains "Spotify" then set spotify_active to true
	end tell
	
	if spotify_active then
		
		tell application "Spotify"
			previous track
		end tell
		
	end if
	
	return
	
end linkinuscmd

linkinuscmd("")