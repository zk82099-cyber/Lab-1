#include <stdio.h>
extern unsigned char ram[];     // RAM declared in assembly

extern void fill_ram(void);     // Assembly function

int main()
{
    fill_ram();                 // Run Assembly function
    printf("RAM contents from 50h to 60h:\n");

    for(int i= 0x50; i<= 0x60; i++)
    {
        printf("%04X ",ram[i]);
    }

    printf("\n");

    return 0;
}
