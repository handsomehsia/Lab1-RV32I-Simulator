#include <stdio.h>
int main()
{
    int i, j, size = 8;
    for (i = 1; i < size + 1; i++)
    { // 印出第i列
        for (j = 1; j < size + i; j++)
        { // 每一列有size+i-1個符號
            if (j < size - i + 1)
            { // 在size-i左邊(含)的符號是空白
                printf(" ");
            }
            else
            { // 其他的是*
                printf("*");
            }
        }
        printf("\n");
    }
    return 0;
}
