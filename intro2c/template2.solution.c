/*
 * CACDS HPC bootcamp
 * template2.solution.c
 */

#include <stdio.h>  // Needed to perform IO operations

int main() {                    // Program entry point
   int integer1, integer2, sum;

   // printf("Hello world!\n");   // old line

   printf("Enter first integer: "); 
   scanf("%d", &integer1);            
   printf("Enter second integer: ");  
   scanf("%d", &integer2);

   sum = integer1 + integer2;
   printf("The sum of %d and %d is %d.\n", integer1, integer2, sum);

   // printf("%d + 1 = %d \n", integer1, integer1+1); old line


   return 0;                    // Terminate main()
}                               // End of main()

