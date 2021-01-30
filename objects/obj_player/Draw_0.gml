draw_self();
//Flash my sprite if I am taking damage
if (flash > 0)
{
	flash = flash - 1;
	shader_set(sh_flash_white);
	draw_self();
	shader_reset();
}