/*
 *  Prompt user for numbers, compute and print results
 *  scanf_math.c
 */

#include <stdio.h>

int main() {

  int integer1, integer2, sum;        // Declare 3 integer variables
  double radius, circumference, area; // Declare 3 floating-point variables
  double pi = 3.14159265;             // Declare and define PI

  // Ask for info and read input
  printf("Enter first integer: ");   // Display a prompting message
  scanf("%d", &integer1);            // Read input from keyboard into integer1
  printf("Enter second integer: ");  // Display a prompting message
  scanf("%d", &integer2);            // Read input into integer2
  printf("Enter the radius: ");      // Prompting message
  scanf("%lf", &radius);             // Read input into variable radius
 
  //Computations
  sum = integer1 + integer2;
  area = radius * radius * pi;
  circumference = 2.0 * radius * pi;
  
  //Output
  printf("The sum of %d and %d is %d.\n", integer1, integer2, sum);
  printf("The radius is %lf.\n", radius);
  printf("The area is %lf.\n", area);
  printf("The circumference is %lf.\n", circumference);
  
  return 0;
}
