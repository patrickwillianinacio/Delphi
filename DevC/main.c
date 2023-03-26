#include <stdio.h>
#include <stdlib.h>

/* run this program using the console pauser or add your own getch, system("pause") or input loop */

int main(int argc, char *argv[]) {
	/* definicao de valor */
abstract typedef RATIONAL ;
condition RATIONAL [1] <> 0;
/* definicoes de operadores */
abstract RATIONAL makerational (a ,b)
int a , b;
precondition b < >0;
postcondition makerational [0] == a;
makerational [1] == b;
abstract RATIONAL add (a ,b ) /* written a + b */
RATIONAL a ,b;
postcondition add [1] == a [1] * b [1];
add [0] == a [0] * b [1] + b [0] * a [1];
abstract RATIONAL mult (a , b) /* written a * b */
RATIONAL a ,b;
postcondition mult [0] == a [0] * b [0];
mult [1] == a [1] * b [1];
abstract RATIONAL equal (a , b) /* written a == b */
RATIONAL a ,b ;
postcondition equal == (a [0] * b [1] == b [0] * a [1]);
	return 0;
}
