/// @description 

// Inherit the parent event
event_inherited();

if(!hasLeveledUp) {
	switch(level) {
		case 1:
			damage = 3;

			break;
		case 2:
			damage = 4;

			break;
		case 3:
			damage = 5;

			break;
	}
	hasLeveledUp = true;
}

if(!hasSplit && thrown) {
	alarm[1] = 30;
	hasSplit = true;
}