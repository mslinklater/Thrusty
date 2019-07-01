/// @description serialise the current map to JSON file
/// The current map is held in the global.currentMap data structure
/// @param filename

var _filename = argument0;
var map = global.currentMap;
var str = json_encode(map);

var file = file_text_open_write(_filename);
file_text_write_string(file, str);
file_text_close(file);
