﻿#ifndef __FILE_H__
#define __FILE_H__

#define STR_EMPTY	""		//문자열
#define ID_EMPTY	-1

typedef struct TIME {
	int ent_hour;	//입차 시 랜덤
	int ent_min;	//입차 분 랜덤
	int exit_hour;	//출차 시 입력	
	int exit_min;	//출차 분 입력
}TIME;

typedef struct PARKING{
	int car_num;		//차량번호
	TIME time;
} PARKING;

void file_write(PARKING car, char filename[]);
#endif