/// @description Load settings from storage and apply them

ini_open(kSettingsFilename);

// set the window size
global.windowWidth = ini_read_real(kSectionDisplay, kKeyWindowWidth, 960);
global.windowHeight = ini_read_real(kSectionDisplay, kKeyWindowHeight, 600);
window_set_size(global.windowWidth, global.windowHeight);
	
// and position
global.windowXPos = ini_read_real(kSectionDisplay, kKeyWindowXPos, 10);
global.windowYPos = ini_read_real(kSectionDisplay, kKeyWindowYPos, 10);
window_set_position(global.windowXPos, global.windowYPos);

// edit map
global.showEditMap = ini_read_real(kSectionDisplay, kShowEditMap, 0);

ini_close();
