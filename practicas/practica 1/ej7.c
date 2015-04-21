#include <stdio.h>

int main(){
	printf("char: %i \nshort: %i \nint: %i \nfloat: %i \ndouble: %i \nlong: %i \nlong long: %i \n" ,
			(int)sizeof(char),
			(int)sizeof(short),
			(int)sizeof(int),
			(int)sizeof(float),
			(int)sizeof(double),
			(int)sizeof(long),
			(int)sizeof(long long));
return 0;
}