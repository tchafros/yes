#include <stdio.h>
#include <math.h>
#include <time.h>
#include <sys/time.h>
#include <stdint.h>

/* module load gcc */
/* Compile me with 'gcc -o cpi-serial cpi-serial.c' */

double f( double );
double f( double a )
{
    return (4.0 / (1.0 + a*a));
}

int main( int argc, char *argv[])
{
    int done = 0, n, i;
    double PI25DT = 3.141592653589793238462643;
    double mypi, pi, h, sum, x;
    double startwtime = 0.0, endwtime=0.0;
    struct timeval tv;

    n = 0;
    while (!done)
     {
      printf("Enter the number of intervals: (0 quits) ");
      scanf("%d",&n);
      
        if (n!=0) 
      {
      if (gettimeofday(&tv, NULL) == 0)
          startwtime = tv.tv_sec*1000000+tv.tv_usec;
      else
        startwtime = 0;
          
            h   = 1.0 / (double) n;
            sum = 0.0;
            for (i = 1; i <= n; i += 1)
            {
                x = h * ((double)i - 0.5);
                sum += f(x);
            }
            mypi = h * sum;

            printf("pi is approximately %.16f, Error is %.16f\n Number of intervals is %5d\n",
               mypi, fabs(mypi - PI25DT),n);
      
      if (gettimeofday(&tv, NULL) == 0)
          endwtime = tv.tv_sec*1000000+tv.tv_usec;
      else
        endwtime = 0;
    
        printf("wall clock time = %.0f usecs \n",
               (endwtime-startwtime));
       }
       else

    return 0;
    }
}
