/// @description setup tilemap contents based o the current map structure
/// @param layer

var _layer = argument0;

var layerId = layer_get_id(_layer);
var tilemap = layer_tilemap_get_id(layerId);
var cellWidth = tilemap_get_tile_width(tilemap);
var cellHeight = tilemap_get_tile_height(tilemap);

// set the tilemap size
var width = ds_map_find_value(global.currentMap, "width");
tilemap_set_width(tilemap, width);
var height = ds_map_find_value(global.currentMap, "height");
tilemap_set_height(tilemap, height);

// now set the room size
room_width = width*cellWidth;
room_height = height*cellHeight;

// populate tilemap elements
var rowsList = ds_map_find_value(global.currentMap, "envGrid");
for(var iRow = 0 ; iRow < height ; iRow++)
{
	var rowList = rowsList[| iRow];
	for(var iCol = 0 ; iCol < width ; iCol++)
	{
		var value = rowList[| iCol];
		if (!tilemap_set(tilemap, value, iCol, iRow))
		{
			var error=0;
		}
	}
}
