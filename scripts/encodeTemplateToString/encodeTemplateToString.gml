gridSize = 32;

tilemap = layer_tilemap_get_id(layer_get_id("Tiles_1"))

xTiles = room_width / gridSize;
yTiles = room_height / gridSize;
var LevelData = "";

for (_y = 0; _y < xTiles; _y++)
	for (_x = 0; _x < xTiles; _x++	)
	{
		tileIn = string(tilemap_get_at_pixel(tilemap, _x * gridSize, _y * gridSize));
		
		if (tileIn != "-1")
		{
		
			if (string_length(tileIn) > 1){
			
				LevelData += "<"+tileIn+">";
			
			}
		
			if (tileIn != -1)
				LevelData += tileIn;
		
		}
	}
	
var saveDir = get_save_filename("*.txt", room_get_name(room) + ".txt");

var file = file_text_open_write(saveDir);
file_text_write_string(file, LevelData);
file_text_close(file);