.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of ram

.section .text
.globl fill_ram         # Makes function visible to C

fill_ram:
    # Stores FFh into RAM locations 50h-58h using indirect addressing
    loop:
        lea ram+0x50, %eax

        movb $0xFF, (%eax)
        inc %eax
        
        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)
        inc %eax
        
        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)
        inc %eax

        movb $0xFF, (%eax)


    ret                 # returns contol to C 

.section .note.GNU-stack,"",@progbits