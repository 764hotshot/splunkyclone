var lay_id = layer_get_id("Tiles_1")

//show_debug_message(string(lay_id))

tilemap = layer_tilemap_get_id(lay_id)

//show_debug_message(string(tilemap))

// Make Border

for (_i = 0; _i < room_width; _i+=gridSize)
{
	tilemap_set_at_pixel(tilemap, 2, _i, 0)
	tilemap_set_at_pixel(tilemap, 2, _i, room_height - gridSize)
}

for (_i = 0; _i < room_height - gridSize; _i+=gridSize)
{
	tilemap_set_at_pixel(tilemap, 2, 0, _i + gridSize)
	tilemap_set_at_pixel(tilemap, 2, room_width - gridSize, _i + gridSize)
}

var sectionStringData = "";

for (_y = 0; _y < ySections; _y++)
{
	for (_x = 0; _x < xSections; _x++)
	{
		sectionStringData = loadRandomSection(sections[_x, _y]);
		
		CreateSectionFromString(_x, _y, sectionStringData, tilemap);
	}
}


//show_message(string(room_width) + "    " + string(_i))
//show_message(string(room_height) + "    " + string(room_height - gridSize))