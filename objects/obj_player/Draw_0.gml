/// @description

draw_sprite_ext(spr_player, 0, x, y, 1, 1, -phy_rotation, c_white, 1);

if(thrustActive)
{
	var radians = degtorad(-phy_rotation);
	var xx = x + sin(radians) * kThrustSpriteDistance;
	var yy = y + cos(radians) * kThrustSpriteDistance;
	draw_sprite_ext(spr_engine, thrustSpriteFrame, xx, yy, 1, 1, -phy_rotation, c_white, 1);
	thrustSpriteFrame = 1-thrustSpriteFrame;
}
