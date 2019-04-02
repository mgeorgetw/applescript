/*
Written in JXA (Javascript for Automation).
This script helps Spotify users share music across platforms.
It uses songwhip.com to create a song link, prompts the user
for a few words, and sets the clipboard to a ready-to-share message.
*/

var app = Application.currentApplication();
app.includeStandardAdditions = true;

var safari = Application('Safari');
safari.includeStandardAdditions = true;

var spotify = Application('Spotify');

// Main program. Check whether Spotify is running or not
if (spotify.running()){
	var trackID = spotify.currentTrack().id();
	generateLink(trackID);
} else {
	app.displayAlert('👋 Spotify is not running', { message: 'This script only works with Spotify.' });
}

function generateLink(trackID) {
	// Get necessary info from Spotify
	var trackName = spotify.currentTrack().name();
	var artist = spotify.currentTrack().artist();

	// Use songwhip.com to create a cross-platform music link
	var mySearch = "https://songwhip.com/" + trackID;
	safari.openLocation(mySearch);

	// Prompt user for a quick note on the music, the second argument is a placeholder
	var myStr = _prompt('Write a few words about this music.', 'Check out this music.');

	// Wait until webpage is loaded and return the song link
	do {
        delay(0.1);
	} while (safari.documents[0].url() == null);

    var songLink = encodeURI(safari.documents[0].url());

    // Fill the template with music info and set to the clipboard
	var template = `${myStr}
"${trackName}" by ${artist}
${songLink}`;
	app.setTheClipboardTo(template);

	// Notify that link is ready to share
	app.displayNotification('Song link is set to the clipboard and ready to share.', { withTitle: '🔗 Song Link is Ready' });
}

// Helper function
function _prompt(text, defaultAnswer) {
	var options = { defaultAnswer: defaultAnswer || '' }
	try {
		app.activate(); // Focus on the prompt dialog box
		return app.displayDialog(text, options).textReturned
	} catch (e) {
		console.error(e);
		return null
	}
}
