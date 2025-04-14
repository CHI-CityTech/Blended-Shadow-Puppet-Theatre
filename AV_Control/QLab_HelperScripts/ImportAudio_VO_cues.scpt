(*
Import all audio files from the front Finder folder into QLab.
Each file becomes a single Audio Cue, with:
- Cue Number derived from filename prefix
- Auto-follow (1 sec) to next cue in the list  
*)

property groupPrefix : "VO"
property defaultFollowTime : 1

-- Get audio files from front Finder window
tell application "Finder"
	if (count of windows) is 0 then
		display alert "No Finder window open." message "Please open a folder containing your audio files."
		return
	end if
	set audioFolder to (target of front window) as alias
	set audioFiles to every file of audioFolder whose name extension is in {"wav", "mp3", "aiff", "m4a"}
end tell

-- Import into QLab
tell application id "com.figure53.QLab.5"
	activate
	set ws to front workspace
	
	repeat with i from 1 to count of audioFiles
		set thisFile to item i of audioFiles
		set filePath to POSIX path of (thisFile as alias)
		set fileName to name of thisFile
		
		-- Extract cue number from filename (up to first ".")
		set AppleScript's text item delimiters to "."
		set cueNum to text item 1 of fileName
		set AppleScript's text item delimiters to ""
		
		-- Create the audio cue
		set newCue to make type "Audio" at end of cues of ws
		set file target of newCue to filePath
		set cue number of newCue to cueNum
		set q name of newCue to fileName
		
		-- Add auto-follow except on last cue
		if i < (count of audioFiles) then
			set pre wait of newCue to 0
			set post wait of newCue to defaultFollowTime
			set auto continue of newCue to true
		end if
	end repeat
end tell
