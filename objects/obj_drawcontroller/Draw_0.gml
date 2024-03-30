with (obj_door)
{
	draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
}
with (obj_player)
{
	draw_set_color(c_white)
	draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, c_white, alpha)
	if flash
	{
		gpu_set_fog(true, c_white, 0, 1000)
		draw_sprite_ext(sprite_index, image_index, x, y, xscale, yscale, angle, c_white, alpha)
		gpu_set_fog(false, c_white,0,1000)
	}
	if global.debug
	{
		draw_set_color(c_red)
		draw_line(x, y, x + hsp * 4, y)
		draw_set_color(c_green)
		draw_line(x, y, x, y + vsp * 4)
		draw_set_color(c_blue)
		draw_line(x, y, x + hsp * 4, y + vsp * 4)
		draw_set_halign(fa_middle)
		draw_set_color(c_white)
		draw_text(x,y - 25, string_concat("movespeed: ", hsp))
		draw_text(x,y - 50, string_concat("vsp: ", vsp))
		draw_text(x,y - 75, string_concat("movespeed: ", movespeed))
		draw_text(x,y - 100, string_concat("mach sound: ", audio_get_name(mach)))
	}
}