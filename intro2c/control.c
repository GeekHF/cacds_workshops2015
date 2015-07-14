/* CACDS HPC Bootcamp
 * control.c
 * Replace ??? for the correct control statements
 * so that the program computes the product of
 * the provided numbers.
 */

#include <stdio.h>

int main()
{
   // loop variables
   int i; 		// loop index
   int last; 		// number of computations to perform
   const int cap=1000; 	// maximum to avoid an endless loop
   
   // computing variables
   int long x; 		// variable
   int long total=1; 	// product result

   printf("How many factors? ");
   scanf("%d",&last);

   for ( i=1 ; i<=cap ; i++){ 	/* good practice to have 
			 	 * a limit for loops that 
			 	 * iterate for an indefinite 
			 	 * number of times */

      if (i>last) 	// end program
         ???;
     
      printf("Enter factor %d: ", i); 
      scanf("%ld",&x);
     
      if ( x==0 )
         ???; // avoid getting zero
      else
      {
	total=total*x;
	printf(" Total = %ld \n",total);
      }


   } // end of loop

   printf("Finished, thanks. \n");
   return 0;
}
