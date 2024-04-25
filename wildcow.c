#include <stdio.h>

void update()
{
    printf(" \033[H\033[J");
}

void gotoxy(int x, int y)
{
    printf("\033[%d;%dH", x, y);
}

int main()
{
    printf("Ligne 1\nLigne2\n");
    gotoxy(1, 4);
    update();
    return 0;
}
