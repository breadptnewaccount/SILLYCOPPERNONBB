with (obj_door)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
with (obj_player)
{
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, c_white, alpha)
	if flash
	{
		gpu_set_fog(true, c_white, 0, 1000)
		draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, c_white, alpha)
		gpu_set_fog(false, c_white,0,1000)
	}
}