// debugging stuff
#macro DEBUG false

#macro kGravity 2

#macro kPlayerRotationSpeed 5
#macro kPlayerThrust -5

#region Files
#macro kSettingsFilename working_directory + "settings.ini"
#endregion

#region Camera, Window & Viewport
#macro kDefaultWindowWidth 960
#macro kDefaultWindowHeight 600
#macro kDefaultCameraWidth 320
#macro kDefaultCameraHeight 200
#endregion

#region Tilemap
enum eTileMapCells
{
	clear = 0,
	envBL,
	envBR,
	envTL,
	envTR,
	envFull,
	envBorder,
	envExit
}
enum eTileBlueprintGrid
{
	clear1 = 0,
	clear2,
	clear3,
	topleft,
	top,
	topright,
	left,
	middle,
	right,
	bottomleft,
	bottom,
	bottomright
}
#endregion

#region Map
#macro kDefaultMapWidth 50
#macro kDefaultMapHeight 50
#endregion

#region Cameras & Viewports
enum eViewportAndCamera
{
	main = 1,
	minimap
}
#endregion