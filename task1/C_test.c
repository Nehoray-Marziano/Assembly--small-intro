#include <stdio.h>

extern int funcA(char *str);
int tester(char *test);
int main(int argc, char **argv){
    int to_return;
    to_return=tester(argv[1]);

    printf("%d",to_return);
    printf("%c",'\n');
    return to_return;
}

int tester(char *test){
    return funcA(test);
}
