/// @description Load settings from storage and apply them

ini_open(kSettingsFilename);

// fullscreen
window_set_fullscreen(ini_read_real(kSectionDisplay, kKeyFullscreen, 0) != 0);

// if not fullscreen...
if(!window_get_fullscreen())
{
	// set the window size
	var windowWidth = ini_read_real(kSectionDisplay, kKeyWindowWidth, 960);
	var windowHeight = ini_read_real(kSectionDisplay, kKeyWindowHeight, 600);
	window_set_size(windowWidth, windowHeight);
	
	// and position
	var windowXPos = ini_read_real(kSectionDisplay, kKeyWindowXPos, 10);
	var windowYPos = ini_read_real(kSectionDisplay, kKeyWindowYPos, 10);
	window_set_position(windowXPos, windowYPos);
}

