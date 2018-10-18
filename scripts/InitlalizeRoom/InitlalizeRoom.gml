random_set_seed(global.messageValue);

gridSize = 32;

//tilemap = layer_tilemap_get_id(layer_get_id("Tiles_1"))

xSections = 4;	//# sections per row
ySections = 4;	//# sections per col

sections = [];	//Rooms array

sectionTilesX = 10;	//Tiles per section row
sectionTilesY = 8;	//Tiles per section col

sectionWidth = sectionTilesX * gridSize;	//Section width in pixels
sectionHeight = sectionTilesY * gridSize;	//Section height in pixels

room_width = (sectionWidth * xSections) + (gridSize * 2);	//Room width in pixels including border
room_height = (sectionHeight * ySections) + (gridSize * 2);	//Room height in pixels including border

for (_y = 0; _y < ySections; _y++)
	for (_x = 0; _x < xSections; _x++)	
		sections[_y, _x] = 0;
		
// Create Main Path
CreateMainPath()

for (_y = 0; _y < ySections; _y++)
	show_debug_message(string(sections[0, _y]) + string(sections[1, _y]) + string(sections[2, _y]) + string(sections[3, _y]))

// Initalize Sections

InitializeAllSections();

// Create Level

GenerateLevel();

// Clean up memory (De-Initialize Sections)
ds_list_destroy(Sections_LR_List);
ds_list_destroy(Sections_LRT_List);
ds_list_destroy(Sections_LRB_List);
ds_list_destroy(Sections_OP_List);	