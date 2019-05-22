/// @description Load settings from storage and apply them

ini_open(kSettingsFilename);

// fullscreen
window_set_fullscreen(ini_read_real("display", "fullscreen", 0) != 0);
