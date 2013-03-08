-- 08/03/2013 valli


on linkinuscmd(cmd)
	set AppleScript's text item delimiters to ""
	set spotify_active to false
	set theString to "Not running Spotify"
	
	tell application "Finder"
		if (get name of every process) contains "Spotify" then set spotify_active to true
	end tell
	
	if spotify_active then
		set got_track to false
		
		tell application "Spotify"
			if player state is playing then
				set theTrack to name of the current track
				set theArtist to artist of the current track
				set theAlbum to album of the current track
				set isStarred to starred of the current track
				set got_track to true
			end if
		end tell
		
		set theString to "/me is not playing anything in Spotify."
		
		if got_track then
			set theString to theTrack & " - " & theArtist & " (" & theAlbum & ")"
			
		end if
	end if
	
	return theString
	
end linkinuscmd

linkinuscmd("")