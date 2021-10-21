press_space = keyboard_check_pressed(vk_space);
space = keyboard_check(vk_space);
released_space = keyboard_check_released(vk_space);

//run
if(space){
	moveSpeed += 1;	
} else {
	moveSpeed = 0;
}
//jump
if(released_space){
	//jumpSpeed = acceleration;
	//y -= jumpSpeed;
	//x += jumpSpeed/2;
}
//attack
if(press_space /* && distance to enemy */){
		
}

if(place_meeting(x, y, Ground)){
	gravityNum = 0;
} else {
	gravityNum = 9.8;	
}

clamp(moveSpeed, 0, 10);
acceleration += moveSpeed;
x = acceleration;
image_speed = moveSpeed*2;
y += gravityNum;


