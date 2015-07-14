/* CACDS HPC Bootcamp
 * forLoopArray.c
 */

#include <stdio.h>

int main()
{
   int array[5],i; // This is an array with 5 elements

   for (i = 0; i < 5; i++){  
      /* Note array elements: (1st,2nd,3rd,4th,5th)
       *      array indices:  ( 0 , 1 , 2 , 3 , 4 )
       */     
      printf("Enter element %d \n", i+1); 
      scanf("%d", &array[i]); // Remember: the & symbol is needed.
   }

   printf("The inverted array is: ");
   for (i = 4; i >-1; i--)  // no {} needed; only 1 line to execute
      printf("%d ", array[i]);

   printf("\n"); // 

   return 0;
}

