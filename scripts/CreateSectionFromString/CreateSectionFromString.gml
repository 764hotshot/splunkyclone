var CurrentXSection = argument0;
var CurrentYSection = argument1;

var SectionString = argument2;

var _tilemap = argument3;

var MultiTileId = "";
c = 0;

while (c < string_length(SectionString))			//MAKE THIS A WHILE LOOP IF NOT WORKING
{
	
			p = c
			while string_char_at(SectionString, p) != ">"{
				MultiTileId += string_char_at(SectionString, p)
				p++
			}
			tilemap_set_at_pixel(_tilemap, MultiTileId, (CurrentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize, (CurrentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize);
			MultiTileId = "";
			c = p;
	
	//switch (string_char_at(SectionString, c))
	//{

			
	//	case "<":
	//		p = c
	//		while string_char_at(SectionString, p) != ">"{
	//			MultiTileId += string_char_at(SectionString, p)
	//			p++
	//		}
	//		tilemap_set_at_pixel(_tilemap, MultiTileId, (CurrentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize, (CurrentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize);
	//		MultiTileId = "";
	//		c = p;
	//		break;
		
	//	default:
	//		tilemap_set_at_pixel(_tilemap, string_char_at(SectionString, c), (CurrentXSection * sectionWidth) + ((c mod sectionTilesX) * gridSize) + gridSize, (CurrentYSection * sectionHeight) + (floor(c / sectionTilesX) * gridSize) + gridSize);
	//		break;
		
	//}
	
	c++
	
}