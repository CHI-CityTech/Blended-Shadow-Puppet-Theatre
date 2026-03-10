(* 02 intermission configure group cues
David B Smith 2023-02-10


Takes a list of text cues and creates a group cue for each, along with attendant fade ins and fade outs.
Fade outs are shifted to the next group cue.

*)


global groupID, textID, fadeInID, fadeOutID, startID, controlCode
set groupID to "G"
set textID to "T"
set fadeInID to "<"
set fadeOutID to "x"
set startID to "+"
set controlCode to "%"

global fadeInTime, fadeOutTime, fadeOutPreWait, textWidth, textAlignment
set fadeInTime to 1.5
set fadeOutTime to 0.5
set fadeOutPreWait to 0
set textWidth to 1000
set textAlignment to "left"

global lastFadeOutCue, lastFadeDuration
set lastFadeDuration to 5
set lastFadeOutCue to {}

(*===================== BODY ===========================*)

tell application id "com.figure53.QLab.5" to tell front workspace
	
	set ccl to get current cue list
	set theCues to (every cue whose parent is ccl) as list
	
	repeat with eachCue in theCues
		tell eachCue
			MakeCueGroup(eachCue) of me
		end tell
	end repeat
	
	MoveFades() of me
	
end tell

(*===================== HANDLERS ===========================*)
(*==========================================================*)


(*====================================
       MakeCueGroup
          for given cue (_cue), create a fade in cue, a fade out and stop cue, and a group cue.
       Place _cue along with newly created fade cues into a new group cue.
       Label each cue appropriately
=====================================*)

on MakeCueGroup(_cue)
	tell application id "com.figure53.QLab.5" to tell front workspace
		set r to ""
		-- extract the Index number from the id
		set _trim to q number of _cue as string
		set _num to (characters 2 thru -1 of _trim)
		
		-- configure text cue
		tell _cue
			set opacity to 0
			set fill stage to false
			set fixed width to textWidth
			set text alignment to textAlignment
			--set _cueID to 
		end tell
		
		-- make fade in
		make type "Fade"
		set fadeInCue to last item of (selected as list)
		
		tell fadeInCue
			set q number to fadeInID & _num
			set do opacity to true
			set opacity to 1
			set cue target to _cue
			set duration to fadeInTime
		end tell
		
		-- make fade out
		make type "Fade"
		set fadeOutCue to last item of (selected as list)
		
		tell fadeOutCue
			set q number to fadeOutID & _num
			set pre wait to fadeOutPreWait
			set do opacity to true
			set opacity to 0
			set cue target to _cue
			set duration to fadeOutTime
			set stop target when done to true
			
		end tell
		set lastFadeOutCue to fadeOutCue
		
		-- make Group
		make type "Group"
		set groupCue to last item of (selected as list)
		
		set _trim to q number of _cue as string
		set _stg to (characters 2 thru -1 of _trim)
		
		tell groupCue
			set q name to q name of _cue
			set q number to groupID & _stg
			set s to q name of groupCue
			if length of s > 0 then
				if (character 1 of s = controlCode) then
					set q color to "red"
				end if
			end if
		end tell
		
		-- move cues into group
		
		--move cue id (uniqueID of lastFadeOutCue) of parent of lastFadeOutCue to end of groupCue
		
		
		move cue id (uniqueID of _cue) of parent of _cue to end of groupCue
		move cue id (uniqueID of fadeInCue) of parent of fadeInCue to end of groupCue
		move cue id (uniqueID of fadeOutCue) of parent of fadeOutCue to end of groupCue
		
	end tell
end MakeCueGroup

(*====================================
       MoveFades(). When created, fade out cues are placed in the group cue along with media cue and fade in cues.  However we want them to fade with the enterance of teh next cue.  This handler does this by moving any fade out cue of index i into group index (i+1)
=====================================*)

on MoveFades()
	tell application id "com.figure53.QLab.5" to tell front workspace
		set fadeList to every cue whose q number contains "x"
		set r to ""
		
		set groupList to every cue whose q type is "Group"
		
		set theCount to count groupList
		
		repeat with i from 1 to theCount
			set theFade to item i of fadeList
			if (i < theCount) then
				set theGroup to item (i + 1) of groupList
				move cue id (uniqueID of theFade) of parent of theFade to end of theGroup
			else
				set the duration of theFade to lastFadeDuration
				set pre wait of theFade to 5
			end if
		end repeat
		
	end tell
end MoveFades

