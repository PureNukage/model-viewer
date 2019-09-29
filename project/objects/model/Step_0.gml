rotation = keyboard_check(ord("A")) - keyboard_check(ord("D"))
image_angle += rotation*3
pitch += keyboard_check(ord("Q")) - keyboard_check(ord("E"))
roll += keyboard_check(ord("Z")) - keyboard_check(ord("C"))
scale = (keyboard_check(ord("W")) - keyboard_check(ord("S")))/3
image_xscale += scale
image_yscale += scale

if keyboard_check_pressed(vk_control) {
	pitch = 0
	roll = 0
	rotation = 0
	scale = 0
	image_angle = 0
}


var _sprite = keyboard_check_pressed(vk_right) - keyboard_check_pressed(vk_left)
if _sprite+sprite_ > -1 and _sprite+sprite_ < ds_list_size(sprite_list) {
	sprite_+=_sprite
	sprite_index = sprite_
	
} else {
	sprite_ = sprite_
}
sprite = sprite_list[| sprite_]