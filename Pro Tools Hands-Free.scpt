use AppleScript version "2.4" -- Yosemite (10.10) or later
use scripting additions

--
--	Created on: Oct 20, 2019
--	Created by: Jonathan Evans
--	
--	This script uses the Apple Speech Recognition Server to listen for speach patterns comparing them to a 
--	list of key words. It then uses the keyword to determine what to Pro Tools UI element to click
--
--	This script uses an Apple application called "System Events" that requires authorization
--	prior to use. You will be prompted multiple times throughout your first use to accept 
--	system accessibilty attributes
on run
	
	set command_list to {"record", "open pro tools", "freeze", "expand track", "stop", "play", "finished", "escape", "enter", ¬
		"down", "up", "shift up", "shift down", "solo", "mute", "arm track"} -- List of voice commands
	set active_command to "" -- the command to be returned from the Apple Speech Recognition Server as String
	
	
	set formatted_list to "Say 'finished' to exit" & return & return
	repeat with i from 1 to (count of command_list)
		set formatted_list to formatted_list & item i of command_list & return
	end repeat
	
	-- Prompt user to begin listening
	updateProgress("Say 'hey pro tools'")
	delay 0.5
	
	repeat while active_command is not "hey pro tools"
		try
			tell application "SpeechRecognitionServer"
				set active_command to listen for "hey pro tools"
			end tell
		end try
	end repeat
	
	updateProgress("Say a command: " & return & return & formatted_list)
	delay 0.5
	
	repeat while active_command is not "finished"
		try
			updateProgress("Say a command " & command_list)
			tell application "SpeechRecognitionServer"
				set active_command to listen for command_list
			end tell
		end try
		
		-- If the voice command is "record"
		if active_command is "record" then
			
			updateProgress("Recording...")
			
			--Click Record enable, then play
			tell application "System Events"
				tell process "Pro Tools" to tell (1st window whose name contains "Edit: ")
					tell group "Transport View Cluster"
						tell group "Normal Transport Buttons"
							click button "Record Enable"
							delay 0.2
							click button "Play"
						end tell
					end tell
				end tell
			end tell
			
			
			-- If the voice command is "open pro tools", then activate Pro Tools
		else if active_command is "open pro tools" then
			
			updateProgress("Opening Pro Tools...")
			
			activate application "Pro Tools"
			
			
			-- If the voice command is "freeze" stop listening until the phrase "keep listening"
		else if active_command is "freeze" then
			updateProgress("Say 'keep listening'...")
			
			set isFrozen to true
			repeat while isFrozen
				tell application "SpeechRecognitionServer"
					set frozenCommand to listen for "keep listening"
					display notification frozenCommand
				end tell
				if frozenCommand is "keep listening" then set isFrozen to false
			end repeat
			
			
			--If the voice command is "expand track" then click the expand track 
		else if active_command is "expand track" then
			
			updateProgress("Expanding...")
			
			--Click track expansion button
			tell application "System Events"
				tell process "Pro Tools"
					tell (1st window whose name contains "Edit: ")
						tell group "Cursor Tool Cluster"
							click button "Zoom Toggle"
						end tell
					end tell
				end tell
			end tell
			
			
			--If the voice command is "stop" then click stop
		else if active_command is "stop" then
			
			updateProgress("Stopped recording...")
			
			--click stop
			tell application "System Events"
				tell process "Pro Tools"
					tell (1st window whose name contains "Edit: ")
						tell group "Transport View Cluster"
							tell group "Normal Transport Buttons"
								click button "Stop"
							end tell
						end tell
					end tell
				end tell
			end tell
			
			
			--If the voice command is "play"
		else if active_command is "play" then
			
			updateProgress("Playing...")
			
			--click play
			tell application "System Events"
				tell process "Pro Tools"
					tell (1st window whose name contains "Edit: ")
						tell group "Transport View Cluster"
							tell group "Normal Transport Buttons"
								click button "Play"
							end tell
						end tell
					end tell
				end tell
			end tell
			
			
			--If the voice command is "escape"
		else if active_command is "escape" then
			
			updateProgress("Pressing Escape...")
			
			--click play
			tell application "System Events"
				key code 53
			end tell
			
			
			--If the voice command is "enter"
		else if active_command is "enter" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke return
			end tell
			
			
			--If the voice command is "down"
		else if active_command is "down" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke ";"
			end tell
			
			
			--If the voice command is "up"
		else if active_command is "up" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke "p"
			end tell
			
			
			--If the voice command is "shift up"
		else if active_command is "shift up" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke "p" using shift down
			end tell
			
			
			--If the voice command is "shift down"
		else if active_command is "shift down" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke ";" using shift down
			end tell
			
			
			--If the voice command is "solo"
		else if active_command is "solo" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke "s" using shift down
			end tell
			
			
			
			--If the voice command is "mute"
		else if active_command is "mute" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke "m" using shift down
			end tell
			
			
			--If the voice command is "arm track"
		else if active_command is "arm track" then
			
			updateProgress("Pressing Enter...")
			
			--click play
			tell application "System Events"
				keystroke "r" using shift down
			end tell
		end if
		
	end repeat
	--"down", "up", "shift up", "shift down", "solo", "mute", "arm track"
	
	--Stop in case Pro Tools has not stopped
	tell application "System Events"
		tell process "Pro Tools"
			tell (1st window whose name contains "Edit: ")
				tell group "Transport View Cluster"
					tell group "Normal Transport Buttons"
						click button "Stop"
					end tell
				end tell
			end tell
		end tell
	end tell
	
	updateProgress("Closing...")
	
	delay 1
	
end run


-----Subroutine-----
-- Update the progress description
-- Take the phrase to update as parameter as String
on updateProgress(phrase)
	set progress description to phrase
end updateProgress
