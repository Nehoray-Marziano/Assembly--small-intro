#include <stdlib.h>
#include <stdio.h>
#include <assert.h>

int cmpstr(char *str1, char *str2){
	int i=0;
	while(i<strlen(str1)&&i<strlen(str2)){
		if(str1[i]>str2[i])
			return 1;
		else if(str1[i]<str2[i])
			return 2;
		i++;
	}
	return 0;
}
