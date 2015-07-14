/* CACDS HPC Bootcamp
 * whileLoop.c
 * Credit: https://www3.ntu.edu.sg/home/ehchua/programming/cpp/c0_Introduction.html
 *   but modified by Martin Huarte (mhuartee@central.uh.edu)
 *   for educational purposes. 
 */

#include <stdio.h>

int main() {

   int sum = 0;      // NOTE THESE 2 NUMBERS AVE DIFFERENT TYPES.
   double average;  
  
   // Compute the sum from 1 to 100 (in "int")
   int number = 1;

   while (number <= 100) { // Typical integration
     sum = sum + number;
     ++number; // number = number+1
   }
                              
   // Compute the average (in "double")
   average =         sum / 100;
   printf("Average using int/int %lf (wrong)   \n", average);

   average = (double)sum / 100;
   printf("Average using double	 %lf (correct) \n", average);
                                                         
   return 0;
}

