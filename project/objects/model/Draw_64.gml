draw_set_halign(fa_right)
draw_text(window_get_width()-15,15,"Sprite: "+string(sprite))
draw_text(window_get_width()-15,30,"Scale: "+string(image_xscale)+","+string(image_yscale))

draw_set_halign(fa_left)
draw_text(15,15,"A and D to rotate yaw")
draw_text(15,30,"W and S to scale model")
draw_text(15,45,"Arrow Left and Arrow Right to switch models")
draw_text(15,60,"Arrow Up and Down to move model")
draw_text(15,75,"Q and E to rotate roll")
draw_text(15,90,"Z and C to rotate pitch")
draw_text(15,105,"Left Control to reset")


//draw_set_halign(fa_left)
//draw_text(15,15,"frame array: "+string(sprite_frames))