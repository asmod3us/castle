-- OpenInTerminal.applescript
-- ForkLift
-- Created by djhammond

tell application "iTerm"
	activate
	
	try
		set myterm to the first terminal
	on error
		set myterm to (make new terminal)
	end try
	
	tell myterm
		try
			launch session "Default Session"
		on error
			display dialog "There was an error creating a new tab in iTerm." buttons {"OK"}
		end try
		tell the last session
			try
				write text "cd _forklift_path_placeholder_" & return
			on error
				display dialog "There was an error cding to the window." buttons {"OK"}
			end try
		end tell
	end tell
	
end tell