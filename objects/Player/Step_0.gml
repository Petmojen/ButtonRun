press_space = keyboard_check_pressed(vk_space);
space = keyboard_check(vk_space);
released_space = keyboard_check_released(vk_space);

//run
if(space){
	moveSpeed += 0.5;	
}
//jump
if(released_space){
	jumpSpeed = moveSpeed;
	y += jumpSpeed;
}
//attack
if(press_space /* && distance to enemy */){
		
}

if(place_meeting(x, y, Ground) && !released_space){
		gravityNum = 0;
}

clamp(moveSpeed, 0, 8);
x = moveSpeed;
y -= gravityNum;


