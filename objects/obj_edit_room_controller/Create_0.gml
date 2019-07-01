/// @description
show_debug_message("obj_edit_room_controller:Create");

// load the map
scr_setTilemapFromCurrentMap("Environment");
scr_setBlueprintGrid("Grid");

zoomLevel = 1;
focusX = kDefaultCameraWidth/2;
focusY = kDefaultCameraHeight/2;

// setup the viewports and cameras

kMainViewport = 0;
kMapViewport = 1;

view_enabled = true;

// enable main viewport
view_set_visible(kMainViewport, true);
view_set_wport(kMainViewport, 640);
view_set_hport(kMainViewport, 400);
view_set_xport(kMainViewport, 0);
view_set_yport(kMainViewport, 0);

// set camera
mainViewportCamera = view_get_camera(kMainViewport);
camera_set_view_pos(mainViewportCamera, 0, 0);
camera_set_view_size(mainViewportCamera, kDefaultCameraWidth, kDefaultCameraHeight);

view_set_visible(kMapViewport, (global.showEditMap == 1));
view_set_wport(kMapViewport, 160);
view_set_hport(kMapViewport, 100);
view_set_xport(kMapViewport, 0);
view_set_yport(kMapViewport, 0);
mapViewportCamera = view_get_camera(kMapViewport);
camera_set_view_pos(mapViewportCamera, 0, 0);
camera_set_view_size(mapViewportCamera, room_width, room_height);
