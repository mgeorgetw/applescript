(*
This script outputs audio with Apple TV, launches and play song on Spotify, and sets volume to 65.
Some things to notice:
1. Need to show volume in menu bar
2. You can choose prefered AirPlay device by changing the name below, default is "Apple TV".
*)

-- Set Airplay device to your device name
set apDevice to "Apple TV"

-- Set audio output to Apple TV by clicking on volume setting in menu bar --
tell application "System Events"
	tell process "SystemUIServer"
		try
			click (menu bar item 1 of menu bar 1 whose description contains "Volume")
		on error errMsg number errNum
			log errMsg
			display alert "Cannot reach Volume setting in menu bar. Please enable it."
			-- Open System Preferences to the Sound pane
			tell application "System Preferences"
				activate
				set the current pane to pane id "com.apple.preference.sound"
			end tell
			return
		end try
		set soundmenu to menu 1 of result
		try
			-- Tolerate numbers in brackets after the tv name. --
			click ((menu item 1 where its name starts with apDevice) of soundmenu)
		on error errMsg number errNum
			log errMsg
			display alert "Cannot find \"Apple TV\". You can set Airplay device name in the script."
			return
		end try
	end tell
end tell

if application "Spotify" is not running then
	tell application "Spotify" to activate
end if

delay 5

set volume output volume 65
tell application "Spotify" to play
