/// @description 

// Inherit the parent event


if(!hasLeveledUp) {
	switch(level) {
		case 1:
			bouncesLeft = 0;
			damage = 5;
			break;
		case 2:
			bouncesLeft = 0;
			damage = 5;
			break;
		case 3:
			bouncesLeft = 0;
			damage = 5;
			break;
	}
	hasLeveledUp = true;
}

if(thrown) {
	image_angle += rotSpeed;
	x += xSpeed;
	if(place_meeting(x,y + ySpeed, obj_ground)) {
		while(!place_meeting(x, y + 1, obj_ground)) {
			y += 1;
		}
		if(bouncesLeft <= 0) {
			xSpeed = 0;
			ySpeed = 0;
			rotSpeed = 0;
			if(!hasPlayedSound) {
				audio_play_sound(snd_plant,1,0);
				hasPlayedSound = true;
			}
			
			if(!attemptedDestroy) {
				alarm[0] = 120;
				attemptedDestroy = true;
			}
		} else {

			image_angle += rotSpeed;
			x += xSpeed;
			y += ySpeed;
			ySpeed += grav;

		}
		
		
	} else {
		y += ySpeed;
		ySpeed += grav;
	}
}