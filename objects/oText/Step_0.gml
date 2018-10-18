if keyboard_check_pressed(vk_enter) and string_length(global.message) > 0
{
	global.messageValue = 0
	for (i = 0; i<string_length(global.message); i++)
		global.messageValue += ord(string_char_at(global.message, i))
	
	room_goto(room0);
	global.message = "";
	

}

//key_pressed_bool = keyboard_check_pressed(vk_anykey)
//key_pressed = keyboard_key

if (keyboard_check_pressed(vk_anykey)) != 0 //&& (keyboard_key != vk_enter)
{
	key_pressed = chr(keyboard_key)
	new_char = string(key_pressed)
	global.message += new_char;
}


//message = keyboard_string;

