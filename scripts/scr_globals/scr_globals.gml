// debugging stuff
#macro DEBUG false

#macro kGravity 2

#macro kPlayerRotationSpeed 5
#macro kPlayerThrust -5

#macro kDefaultWindowSize 960
#macro kDefaultWindowSize 600

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