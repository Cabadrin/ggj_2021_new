//Horizontal Collision. Looks to see if a wall is to the right of me, returns a 1 via sign if it is, and then stops me.
if(place_meeting(x+hsp,y,par_collidable))
{
	while(!place_meeting(x+sign(hsp),y,par_collidable))
	{
		x = x + sign(hsp);
	}
	hsp = - hsp
}
x = x + hsp;

if (hsp != 0) image_xscale = sign(hsp) * size;
image_yscale = size;