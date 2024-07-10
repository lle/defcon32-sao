/*
 * game_racecar.c
 *
 *  Created on: Jul 9, 2024
 *      Author: kitty
 */

#include "screenBuffer.h"
#include "game_racer.h"

#define CAR_BLINK_RATE 100

void shiftDownObstacle(void);
void generateObstacles(uint8_t numOfObstacle);
void clearTopRow(void);
void updateDifficulty(void);
uint16_t gameRacer_refreshInterval = 1200;
uint32_t gameRacer_level = 0;
uint8_t gameRacer_obstacleCount = 1;
uint8_t gameRacer_carPosition = 3;


void shiftDownObstacle()
{
	for(int r=6; r>=0; r--)	//start from bottom up (row 7,6,5...1,0)
	{
		for(int c=0; c<8; c++)	//go from column left to right
		{
			uint8_t tempBit = screen_get_bit(r, c);
			screen_set_bit(r+1, c, tempBit); 	//move pixel down 1 row
		}
	}
}

void clearTopRow()
{
	//clear top row once everything has been shifted down
	for(int col=0; col<8; col++)
	{
		screen_set_bit(0, col, 0);
	}
}

void generateNewRow(uint8_t numOfObstacle)
{
	//make sure to limit obstacles to 4 per row
	if(numOfObstacle > 4)
		numOfObstacle = 4;

	//shift all the obstacle down 1 row
	shiftDownObstacle();
	clearTopRow();

	//generate requested number of obstacle
	int8_t obstaclePosition[2] = {-1,-1};
	for(int i=0; i<numOfObstacle; i++)
	{
		int8_t tempCol = -1;
		while(tempCol == -1)
		{
			uint8_t random = rand()%8;
			if(screen_get_bit(0, random) == 0)	//if that pixel is OFF then continue
			{
				if(screen_get_bit(0, random-1) == 0) //check there is no ON pixel on the left or else it might lead to unwinnable scenario
				{
					if(screen_get_bit(0, random+1) == 0) //check there is no ON pixel on the right
						tempCol = random;								//only then accept the proposed random position of the new obstacle
				}
			}
		}
		screen_set_bit(0, tempCol, 1);
	}
}

void gameRacer_startNewGame()
{

}

void updateDifficulty()
{
	if		(gameRacer_level == 10) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=1000;	}
	else if	(gameRacer_level == 20) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=900;	}
	else if	(gameRacer_level == 30) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=800;	}
	else if	(gameRacer_level == 40) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=700;	}
	else if	(gameRacer_level == 50) 	{ gameRacer_obstacleCount=2; 	gameRacer_refreshInterval=600; 	}
	else if	(gameRacer_level == 60) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=400;	}
	else if	(gameRacer_level == 70) 	{ gameRacer_obstacleCount=2; 	gameRacer_refreshInterval=400;	}
	else if	(gameRacer_level == 80) 	{ gameRacer_obstacleCount=1; 	gameRacer_refreshInterval=200;	}
	else if	(gameRacer_level == 90) 	{ gameRacer_obstacleCount=2; 	gameRacer_refreshInterval=200;	}
}

void gameRacer_run()
{
	static uint32_t ts_lastExec = 0;
	if(HAL_GetTick() - ts_lastExec > gameRacer_refreshInterval)
	{
		ts_lastExec = HAL_GetTick();
		generateNewRow(gameRacer_obstacleCount);
		gameRacer_level++;
		updateDifficulty();
	}

	static uint32_t ts_blinkingCar = 0;
	if(HAL_GetTick() - ts_blinkingCar > CAR_BLINK_RATE)
	{
		ts_blinkingCar = HAL_GetTick();
		if(screen_get_bit(7, gameRacer_carPosition) == 1)	//IF led is ON then turned it off
			screen_set_bit(7, gameRacer_carPosition, 0);
		else
			screen_set_bit(7, gameRacer_carPosition, 1);

	}
}

