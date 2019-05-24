/// @description

kSectionDisplay = "display";
kKeyWindowWidth = "window_width";
kKeyWindowHeight = "window_height";
kKeyWindowXPos = "window_xpos";
kKeyWindowYPos = "window_ypos";

kEventLoad = 0;
kEventSave = 1;

kAlarmSaveTick = 0;

event_user(kEventLoad);
alarm_set(kAlarmSaveTick, 600);	// every 10 seconds
