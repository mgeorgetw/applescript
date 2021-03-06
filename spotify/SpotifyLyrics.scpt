/*
Written in JXA (Javascript for Automation).
Simple script to Google search for lyrics of the song currently playing on Spotify.
*/
var app = Application.currentApplication();
app.includeStandardAdditions = true;

var spotify = Application('Spotify');

if (spotify.running()){
	var trackName = spotify.currentTrack().name();
	var artist = spotify.currentTrack().artist();
	var mySearch = trackName + ' ' + artist + ' lyrics OR 歌詞';
	app.doShellScript("open 'https://google.com/search?q='" + encodeURI(mySearch));
} else {
	app.displayAlert('👋 Spotify is not running', { message: 'I can only search for lyrics of songs playing in Spotify.' });
}
