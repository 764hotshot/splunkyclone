// Grab Section Type
sectionType = argument0;

if sectionType == 0
	choose(0, 0, 0, 1, 2, 3)

switch (sectionType)
{
	case 0:
		return ds_list_find_value(Sections_OP_List, floor(random(ds_list_size(Sections_OP_List))));
		break;
	
	case 1:
		return ds_list_find_value(Sections_LR_List, floor(random(ds_list_size(Sections_LR_List))));
		break;
	
	case 2:
		return ds_list_find_value(Sections_LRB_List, floor(random(ds_list_size(Sections_LRB_List))));
		break;

	case 3:
		return ds_list_find_value(Sections_LRT_List, floor(random(ds_list_size(Sections_LRT_List))));
		break;

}
