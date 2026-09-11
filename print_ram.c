#include <stdio.h>
extern unsigned char ram[];     // RAM declared in assembly

extern void fill_ram(void);     // Assembly function

int main()
{
    fill_ram();                 // Run Assembly function
    printf("RAM contents from 50h to 58h:\n");

    for(int i= 0x50; i<= 0x58; i++)
    {
        printf("%02X ",ram[i]);
    }

    printf("\n");

    return 0;
}
