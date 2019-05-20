/// @function scr_initialiseCurrentMap(width, height)
/// @description Initialise the global currentMap structure
/// @param width The width of the map
/// @param height The height of the map

var _width = argument0;
var _height = argument1;

// setup the global.currentMap structure

global.currentMap = ds_map_create();

ds_map_add(global.currentMap, "width", _width);
ds_map_add(global.currentMap, "height", _height);

// initialise the env grid to empty
var rowsList = ds_list_create();
for(var iRow=0 ; iRow<_height ; iRow++)
{
	var thisRow = ds_list_create();
	for(var iCol=0 ; iCol<_width ; iCol++)
	{
		thisRow[| iCol] = eTileMapCells.clear;
	}
	rowsList[| iRow] = thisRow;
	ds_list_mark_as_list(rowsList, iRow);
}
ds_map_add_list(global.currentMap, "envGrid", rowsList);

// set the env grid borders
for(var xx=0 ; xx<_width ; xx++)
{
	scr_setEnvData(xx, 0, eTileMapCells.envExit);
	scr_setEnvData(xx, _height-1, eTileMapCells.envBorder);
}
for(var yy=0 ; yy<_height ; yy++)
{
	scr_setEnvData(0, yy, eTileMapCells.envBorder);
	scr_setEnvData(_width-1, yy, eTileMapCells.envBorder);
}
