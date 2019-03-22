# AppleScripts

A scripts collection to make life easier on macOS

## Spotify

### SpotifyLyrics

This script simply Google search for lyrics of the song currently playing on Spotify. Written in JXA (Javascript for Automation). 

### ShareSong

This script helps Spotify users share music across platforms. It uses [songwhip.com](https://songwhip.com) to create a song link, prompts the user for a few words, and sets the clipboard to a ready-to-share message. Written in JXA (Javascript for Automation). 

### HomeMusicMode

This script AirPlays macOS audio to Apple TV, plays song on Spotify, and sets volume to 65. Works well by itself, but made with Siri Shortcuts' Run Script Over SSH in mind. This allows me to shout "Hey Siri, Home Music Mode" and enjoy music with a wired connection.

```shell
# Script to run from Siri Shortcuts
caffeinate -u -t 1; osascript /Path/to/the/Scripts/HomeMusicMode.scpt
```

Some things to notice: 

1. Need to show volume in menu bar

2. You can choose prefered AirPlay device by changing the device name in the script, default is "Apple TV".

## Text Editing

### BrowserToMarkdownLink

This script returns the title and URL of the frontmost tab of the active browser, and sets the clipboard to a markdownified link.