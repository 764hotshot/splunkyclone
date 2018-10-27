var saveDir = "LRB_1.txt";

var file = file_text_open_read(saveDir);
var levelString = file_text_read_string(file);
file_text_close(file);


ds_list_add(Sections_LRB_List,
				levelString);