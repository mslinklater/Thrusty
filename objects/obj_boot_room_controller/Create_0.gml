/// @description

#region Debug
show_debug_overlay(debug_mode);
#endregion

#region Data structures
scr_initialiseCurrentMap(kDefaultMapWidth, kDefaultMapHeight);	
scr_serialiseCurrentMap(working_directory + "currentMap.json");
scr_deserialiseCurrentMap(working_directory + "currentMap.json");
#endregion
