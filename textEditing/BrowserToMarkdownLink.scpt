/*
Written in JXA (Javascript for Automation).
This script returns the title and URL of the frontmost tab of the active browser, and sets the clipboard to a markdownified link.

Mostly adapted from a GitHub Gist by Vítor Galvão. 
Link to the Gist: https://gist.github.com/vitorgalvao/5392178#file-get_title_and_url-js
*/

var se = Application('System Events');
var frontmost_app_name = se.applicationProcesses.where({ frontmost: true }).name()[0]
var frontmost_app = Application(frontmost_app_name)
frontmost_app.includeStandardAdditions = true;

if (['Google Chrome', 'Google Chrome Canary', 'Chromium', 'Opera', 'Vivaldi', 'Brave'].indexOf(frontmost_app_name) > -1) {
	var current_tab_title = frontmost_app.windows[0].activeTab.name();
	var current_tab_url = frontmost_app.windows[0].activeTab.url();
} else if (['Safari', 'Safari Technology Preview', 'Webkit'].indexOf(frontmost_app_name) > -1) {
	var current_tab_title = frontmost_app.documents[0].name();
	var current_tab_url = frontmost_app.documents[0].url();
} else {
  frontmost_app.displayNotification('You need a supported browser as your frontmost app.', { withTitle: 'Browser Not Supported' });
	throw new Error('You need a supported browser as your frontmost app.');
}

var markdown_link = `[${current_tab_title}](${current_tab_url})`;
frontmost_app.setTheClipboardTo(markdown_link);
