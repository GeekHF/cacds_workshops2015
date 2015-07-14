/*
 * CACDS HPC bootcamp
 * template1.c
 */

#include <stdio.h>  // Needed to perform IO operations

int main() {                    // Program entry point
   int integer1;

   printf("Hello world!\n");   // Says what is bewteen ""

   printf("Enter integer: "); 
   scanf("%d", &integer1);            

   printf("%d + 1 = %d \n", integer1, integer1+1);


   return 0;                    // Terminate main()
}                               // End of main()

