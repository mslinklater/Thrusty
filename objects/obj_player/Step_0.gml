/// @description

#region Controls

if(keyboard_check(vk_left))
{
	phy_rotation -= kPlayerRotationSpeed;
}
if(keyboard_check(vk_right))
{
	phy_rotation += kPlayerRotationSpeed;
}

if(keyboard_check(vk_space))
{
	thrustActive = 1;
}
else
{
	thrustActive = 0;
}
#endregion

#region Physics
if(thrustActive)
{
	physics_apply_local_force(0, 0, 0, kPlayerThrust);
}
phy_angular_velocity = 0;
#endregion
