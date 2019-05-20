// Store the current map as a JSON file

var map = global.currentMap;
var str = json_encode(map);

var file;
file = file_text_open_write(working_directory + "currentMap.json");
file_text_write_string(file, str);
file_text_close(file);
