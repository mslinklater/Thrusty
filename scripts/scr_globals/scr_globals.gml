// debugging stuff
#macro DEBUG false

#macro kGravity 2

#macro kPlayerRotationSpeed 5
#macro kPlayerThrust -5

#region Tilemap
enum eTileMapCells
{
	clear = 0,
	envBL,
	envBR,
	envTL,
	envTR,
	envFull,
	envBorder
}
#macro kTileMapEnvClear 0
#macro kTileMapEnvBL 1
#macro kTileMapEnvBR 2
#macro kTileMapEnvTL 3
#macro kTileMapEnvTR 4
#macro kTileMapEnvFull 5
#endregion
