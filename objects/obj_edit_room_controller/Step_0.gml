/// @description

// Use M to toggle map

if(keyboard_check_pressed(ord("M")))
{
	global.showEditMap = 1 - global.showEditMap;
	view_set_visible(kMapViewport, global.showEditMap);
	with(obj_userSettingsManager)
	{
		event_user(kEventSave);
	}
}

// set the main viewport camera

var xRange = 320 * zoomLevel;
var yRange = 200 * zoomLevel;
var camera = view_get_camera(kMainViewport);
camera_set_view_pos(camera, focusX - xRange, focusY - yRange);
camera_set_view_size(camera, xRange * zoomLevel, yRange * zoomLevel);

// mouse scroll wheel to zoom
if(mouse_wheel_down())
{
	zoomLevel *= 1.1;
}
if(mouse_wheel_up())
{
	zoomLevel *= 0.9;
}
