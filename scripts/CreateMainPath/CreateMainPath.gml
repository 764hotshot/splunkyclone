// Select starting room
var currentY = 0;					//Initialize as starting Y
var currentX = choose(0,1,2,3);		//Initialize as starting X
var newDirection = 0;				//Keep track of what direction to move

sections[currentX, currentY] = 1;	//Start with room type of exit left and right

while (currentY < 4)
{
	if (newDirection == 0)
		newDirection = choose (1,1,2,2,3); // 1 = left, 2 = right, 3 = down
	
	// Move left if direction = 1
	if (newDirection == 1)
	{	
		if (currentX > 0)
		{
			sections[--currentX, currentY] = 1;
			newDirection = choose(1, 1, 1, 3);
		}
		else
		{
			// Can't move left, need to move down. Need to change current room to a 2 sn next room to a 3
			if (currentY < 3)
			{
				sections[currentX, currentY] = 2;
				sections[currentX, ++currentY] = 3;
				newDirection = 2;
			}
			else
				++currentY;	//Exit out of loop
		}
	}
	
	// Move right if direction = 2
	else if (newDirection == 2)
	{
		if (currentX < 3)
		{
			sections[++currentX, currentY] = 1;		//Set rrom type to entrance left and entrance right
			newDirection = choose(2, 2, 2, 3);
		}
		else
		{
			// Can't move left, need to move down. Need to change current room to a 2 and next room to a 3
			if (currentY < 3)
			{
				sections[currentX, currentY] = 2;
				sections[currentX, ++currentY] = 3;
				newDirection = 1;
			}
			else
				++currentY;	//Exit out of loop
		}
	}
	
	// Move down if direction = 3
	else if (newDirection == 3)
	{
		if (currentY < 3)
		{
			sections[currentX, currentY] = 2;
			sections[currentX, ++currentY] = 3;
			newDirection = 0;
			
			if (currentX == xSections -1)
				newDirection = choose (1,1,3);		
			else if (currentX == 0)
				newDirection = choose (2,2,3);
		}
		else
		{
			++currentY;
		}
	}
	
}