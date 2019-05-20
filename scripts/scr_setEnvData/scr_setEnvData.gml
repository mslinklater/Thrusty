/// @function scr_setEnvData(x, y, val)
/// @description Set an environment cell in the currentMap structure
/// @param x
/// @param y
/// @param val

var _x = argument0;
var _y = argument1;
var _val = argument2;

var rowList = ds_map_find_value(global.currentMap, "envGrid");
var thisRow = rowList[| _y];
thisRow[| _x] = _val;
