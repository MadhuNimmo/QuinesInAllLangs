#include<stdio.h>
void main() { 
    char *s="main() { char *s=%c%s%c; printf(s,34,s,34); }"; 
    printf(s,34,s,34);
}