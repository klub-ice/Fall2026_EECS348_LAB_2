#include "isEven.h"

#include <stdio.h>
#include "isOdd.h"

int main() {
    int num;
    printf("Enter an integer: ");
    scanf("%d", &num);
    isOdd(num);
    return 0;
}
