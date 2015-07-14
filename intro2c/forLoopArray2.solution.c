/* CACDS HPC Bootcamp
 * forLoopArray2.solution.c
 */

#include <stdio.h>

int main()
{
   int array[10],i,n; // This is an array with 10 elements

   printf("How many elements < 10 ?");
   scanf("%d", &n); /* DON'T FORGET THE &
		     * otherwise, error: 
		     * "Segmentation fault (core dumped)"
		     */

   for (i = 0; i < n; i++){  
      /* Note array elements: (1st,2nd,3rd,4th,5th)
       *      array indices:  ( 0 , 1 , 2 , 3 , 4 )
       */     
      printf("Enter element %d \n", i+1); 
      scanf("%d", &array[i]); // Remember: the & symbol is needed.
   }

   printf("Even elements: ");
   for (i = 1; i < n; i=i+2)  // no {} needed; only 1 line to execute
      printf("%d ", array[i]);

   printf("\n"); // Push cursor to next line

   return 0;
}

