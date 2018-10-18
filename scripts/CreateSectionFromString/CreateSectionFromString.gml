var CurrentXSection = argument0;
var CurrentYSection = argument1;

var SectionString = argument2;

var _tilemap = argument3

for (c = 0; c < string_length(SectionString); c++;)
{
	switch (string_char_at(SectionString, c))
	{
		case "0":
			break;
			
		case "1":
			tilemap_set_at_pixel(_tilemap, 1, (CurrentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize, (CurrentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize);
			break;
			
		case "2":
			tilemap_set_at_pixel(_tilemap, 2, (CurrentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize, (CurrentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize);
			break;
		
	}
	
	
	
}