draw_self();
draw_set_font(font0);
draw_set_color(c_black)
draw_set_valign(fa_middle);
draw_text(x, y, global.message);
draw_text(x-50, y, random_get_seed());
draw_text(x-100, y, global.messageValue);

var textVal = 0
	for (i = 0; i<string_length(global.message); i++)
		textVal += ord(string_char_at(global.message, i))

draw_text(x-150, y, textVal);