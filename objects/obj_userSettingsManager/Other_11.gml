/// @description Save settings to storage

// see if anything has changed
var changes = 0;

if(window_get_width() != global.windowWidth) changes++;
if(window_get_height() != global.windowHeight) changes++;
if(window_get_x() != global.windowXPos) changes++;
if(window_get_y() != global.windowYPos) changes++;

// if there are changes, save a new ini file
if(changes > 0)
{
	ini_open(kSettingsFilename);

	ini_write_real(kSectionDisplay, kKeyWindowWidth, window_get_width());
	ini_write_real(kSectionDisplay, kKeyWindowHeight, window_get_height());
	
	ini_write_real(kSectionDisplay, kKeyWindowXPos, window_get_x());
	ini_write_real(kSectionDisplay, kKeyWindowYPos, window_get_y());

	ini_close();

	show_debug_message("User settings saved");
}

