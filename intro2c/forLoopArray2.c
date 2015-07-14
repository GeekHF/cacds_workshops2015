/* CACDS HPC Bootcamp
 * forLoopArray2.c
 */

#include <stdio.h>

int main()
{
   int array[5],i; // This is an array with 5 elements

/* DON'T FORGET THE & in scanf
* otherwise, error: "Segmentation fault (core dumped)"
*/

   for (i = 0; i < 6; i++){  
      /* Note array elements: (1st,2nd,3rd, ...
       *      array indices:  ( 0 , 1 , 2 , ...
       */     
      printf("Enter element %d \n", i+1); 
      scanf("%d", &array[i]); // Remember: the & symbol is needed.
   }

   printf("The inverted array is: ");
   for (i = 4; i > -1 ; i--)  // no {} needed; only 1 line to execute
      printf("%d ", array[i]);

   printf("\n"); // Push cursor to next line

   return 0;
}

