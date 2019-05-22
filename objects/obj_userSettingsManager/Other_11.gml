/// @description Save settings to storage

ini_open(kSettingsFilename);

// fullscreen
if(window_get_fullscreen())
{
	ini_write_real("display", "fullscreen", 1);
}
else
{
	ini_write_real("display", "fullscreen", 0);
}