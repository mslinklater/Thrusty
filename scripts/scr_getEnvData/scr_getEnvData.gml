/// @function scr_getEnvData(x, y)
/// @description Get an environment cell in the currentMap structure
/// @param x
/// @param y

var _x = argument0;
var _y = argument1;

var rowList = ds_map_find_value(global.currentMap, "envGrid");
var thisRow = rowList[| _y];
return thisRow[| _x];
