//
//  main.cpp
//  Exam_localtime_gmtime
//
//  Created by Hurderella on 2016. 2. 25..
//  reference :
//      - http://www.cplusplus.com/reference/ctime/localtime/
//      - http://www.cplusplus.com/reference/ctime/gmtime/
//      - http://hurderella.tistory.com/76

#include <iostream>
#include <stdio.h>
#include <time.h>

int main(int argc, const char * argv[]) {

    printf("Hello World\n");
    
    time_t rawtime;
    struct tm* local_timeinfo;
    struct tm* gm_timeinfo;
    
    // wrong case on ubuntu, visual studio 2013.
    time(&rawtime);
    local_timeinfo = localtime(&rawtime);
    gm_timeinfo = gmtime(&rawtime);
    
    printf("local time and date : %s\n", asctime(local_timeinfo));
    printf("gm time and date : %s\n", asctime(gm_timeinfo));
    
    printf("local_timeinfo : %X\n", local_timeinfo);
    printf("gm_timeeinfo : %X\n", gm_timeinfo);
    
    // no problem.
    local_timeinfo = localtime(&rawtime);
    printf("local time and date : %s\n", asctime(local_timeinfo));
    
    gm_timeinfo = gmtime(&rawtime);
    printf("gm time and date : %s\n", asctime(gm_timeinfo));
    
    return 0;
}
