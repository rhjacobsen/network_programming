// Program to produce the time stamp test examples of RFC868
#include <stdio.h>
#include <time.h>

int main(void) {
    struct tm t;
    time_t t_of_day;

    t.tm_year = 1983-1900;  // Year - 1900
    t.tm_mon = 4;           // Month, where 0 = jan
    t.tm_mday = 1;          // Day of the month
    t.tm_hour = 0;
    t.tm_min = 00;
    t.tm_sec = 00;
    t.tm_isdst = 1;        // Is daylight savingtime (DST) on? 1 = yes, 0 = no, -1 = unknown

    // Adding 70 years offset = 2,208,988,800 second added
    t_of_day = mktime(&t)+2208988800;

    printf("Seconds since 1 January 1900: %ld\n", (long) t_of_day);
}
