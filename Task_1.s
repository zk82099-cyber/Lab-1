.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of ram

.section .text
.globl fill_ram         # Makes function visible to C

fill_ram:
    # Stores FFh into RAM locations 50h-58h using direct addressing


    movb $0xFF, ram+0x50
    movb $0xFF, ram+0x51
    movb $0xFF, ram+0x52
    movb $0xFF, ram+0x53
    movb $0xFF, ram+0x54
    movb $0xFF, ram+0x55
    movb $0xFF, ram+0x56
    movb $0xFF, ram+0x57
    movb $0xFF, ram+0x58

    ret                 # returns contol to C 

.section .note.GNU-stack,"",@progbits