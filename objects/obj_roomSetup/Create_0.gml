/// @description

#region Build walls

// Get the tilemap dimensions
var layerID = layer_get_id("Environment");
var tmID = layer_tilemap_get_id(layerID);
var width = tilemap_get_width(tmID);
var height = tilemap_get_height(tmID);
var tileSizeX = tilemap_get_tile_width(tmID);
var tileSizeY = tilemap_get_tile_height(tmID);

// Iterate over them and find occupied tiles that are neighbors with unoccupied tiles
for(var xpos = 0 ; xpos < width ; xpos++)
{
	for(var ypos = 0 ; ypos < height ; ypos++)
	{     
		var cellId = tilemap_get(tmID, xpos, ypos);
		switch(cellId)
		{
			case eTileMapCells.envBL:
				instance_create_layer(xpos*tileSizeX, ypos*tileSizeY, "Instances", obj_env_wall_bl);
			break;
			case eTileMapCells.envBR:
				instance_create_layer(xpos*tileSizeX, ypos*tileSizeY, "Instances", obj_env_wall_br);
			break;
			case eTileMapCells.envTL:
				instance_create_layer(xpos*tileSizeX, ypos*tileSizeY, "Instances", obj_env_wall_tl);
			break;
			case eTileMapCells.envTR:
				instance_create_layer(xpos*tileSizeX, ypos*tileSizeY, "Instances", obj_env_wall_tr);
			break;
			case eTileMapCells.envFull:
			case eTileMapCells.envBorder:
				instance_create_layer(xpos*tileSizeX, ypos*tileSizeY, "Instances", obj_env_wall_full);
			break;
		}
		if(cellId != 0)
		{
		}
	}
}

#endregion