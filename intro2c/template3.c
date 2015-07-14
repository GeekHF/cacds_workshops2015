/*
 * CACDS HPC bootcamp
 * template3.c
 */

#include <stdio.h>  // Needed to perform IO operations
#include <math.h>   // Needed to perform sqrt()

int main() { 
   // Character declarations and initializations:
   char c1[]="abcd"			;
   char c2[5]="abcd"			;
   char c3[]={'a','b','c','d','\0'}	;
   char c4[5]={'a','b','c','d','\0'}	;

   // Number declarations and initializations:
   const double e=2.718281828459; // CONST=constant, DO NOT CHANGE
   double 	irrational	;
   int 		fingers,i	;
   long int     fact=1		; // 10!
 
   // Compute:
   //e=1.2345  // this line would be illegal 
   fingers=5			;
   irrational = sqrt (2)	;

   // LOOP
   for (i=1;i<11; i++)		// no ; needed
     fact=fact*i		;

   // Print all results:
   printf("Strings: %s %s %s %s \n", c1, c2, c3, c4)			;
   printf("Numbers: %f %lf %d %ld \n", e, irrational, fingers, fact)	;
       /* %s  for strings
 	* %f  for float real numbers 
 	* %d  for decimal integer
 	* %ld for long decimal integer
	*/
   return 0;
}          

