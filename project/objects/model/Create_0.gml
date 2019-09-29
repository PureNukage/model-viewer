image_speed = 0
sprite_list = ds_list_create()
sprite_ = 0
sprite_frames = [] 
frame = 0
frame_count = 0
for(var i=0;i<1000;i++) {
	if !sprite_exists(i) {
		i = 1000	
	} else {
		var _sprite_name = sprite_get_name(i)
		if string_char_at(_sprite_name,string_length(_sprite_name)) == "0" {
			var sprite_name_last_char_removed = string_delete(_sprite_name,string_length(_sprite_name),1)
			var f = 0
			ds_list_add(sprite_list,sprite_name_last_char_removed)
			sprite_frames[i,f] = i
			for(var c=i+1;c<1000;c++) {
				var next_frame_sprite = sprite_get_name(c)
				var next_frame_sprite_last_char_removed = string_delete(next_frame_sprite,string_length(next_frame_sprite),1)
				if next_frame_sprite_last_char_removed == sprite_name_last_char_removed {
					f++
					sprite_frames[i,f] = c	
				} else {
					i = c - 1
					c = 1000
				}
			}
		} else {
			ds_list_add(sprite_list,sprite_get_name(i))	
			sprite_frames[i,0] = i
		}
	}	
}
sprite = sprite_list[| sprite_]