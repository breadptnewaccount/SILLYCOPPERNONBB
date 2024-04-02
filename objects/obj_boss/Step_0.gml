event_inherited();
if (attack_cooldown <= 0) {
    // Boss attacks
	/*
    if (place_meeting(x, y, obj_player)) {
        global.hp -= 1; // Reduce player health on contact
    }
	*/
    attack_cooldown = irandom_range(30, 90); // Randomize attack cooldown
} else {
    attack_cooldown--;
}

// Boss movement
var move_x = lengthdir_x(speed, direction);
var move_y = lengthdir_y(speed, direction);
if (!place_meeting(x + move_x, y, obj_solid)) {
    x += move_x;
} else {
    direction += 180; // Reverse direction on solid collision
}
if (!place_meeting(x, y + move_y, obj_solid)) {
    y += move_y;
} else {
    direction += 180; // Reverse direction on solid collision
}


// obj_boss Collision Event with player's bullets
if (place_meeting(x, y, obj_player)) {
    if obj_player.state = states.shoulderbash {
		boss_health -= 10; // Reduce boss health on hit
		//instance_destroy(); // Destroy the bullet
		if (boss_health <= 0) {
			// Boss defeated logic
			instance_destroy();
		}
	}
}
