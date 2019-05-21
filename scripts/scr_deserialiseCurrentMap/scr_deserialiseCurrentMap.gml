/// @description deserialise a JSON file into the current Map
/// @param filename

var _filename = argument0;

var file = file_text_open_read(_filename);
var theString = file_text_read_string(file);
file_text_close(file);

global.currentMap = json_decode(theString);
