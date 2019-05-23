/// @description Save settings to storage

ini_open(kSettingsFilename);

// fullscreen
if(window_get_fullscreen())
{
	ini_write_real(kSectionDisplay, kKeyFullscreen, 1);
}
else
{
	ini_write_real(kSectionDisplay, kKeyFullscreen, 0);
	
	// not fullscreen so write the window size
	ini_write_real(kSectionDisplay, kKeyWindowWidth, window_get_width());
	ini_write_real(kSectionDisplay, kKeyWindowHeight, window_get_height());
	
	/// and position
	ini_write_real(kSectionDisplay, kKeyWindowXPos, window_get_x());
	ini_write_real(kSectionDisplay, kKeyWindowYPos, window_get_y());
}
