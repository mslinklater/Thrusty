/// @description setup blueprint tilemap
/// @param layer

var _layer = argument0;

var layerId = layer_get_id(_layer);
var tilemap = layer_tilemap_get_id(layerId);
var width = tilemap_get_width(tilemap);
var height = tilemap_get_height(tilemap);