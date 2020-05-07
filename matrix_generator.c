#include<stdio.h>
#include <stdlib.h>
#include <time.h>

int main(){
   /* 2D array declaration */
   const int R = 10;
   const int C = 10;
   int disp[R][C];

   /* Counter variables for the loop */
   int i, j;
   int n;

   /* Populate the array */
   for(i=0; i<R; i++) {
      for(j=0;j<C;j++) {
        n = (rand() % (15 - 1 + 1)) + 1;
         if (i == j) {
           n = 0;
         }
         disp[i][j] = n;
      }
   }

   //Displaying array elements
   printf("Two Dimensional array elements:\n");
   for(i=0; i<R; i++) {
      for(j=0;j<C;j++) {
         printf("%d ", disp[i][j]);
         if(j==(C-1)){
            printf("\n");
         }
      }
   }
   return 0;
}
