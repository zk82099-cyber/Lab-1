.section .bss
.globl ram
.lcomm ram, 256          # Reserve 256 bytes of ram

.section .text
.globl fill_ram         # Makes function visible to C

fill_ram:
    # for the series 1+2+3+….+N (N=10) and put the sum into memory location 0x50

    movb $0, ram+0x50
    movb $1, ram+0x51
    movb $2, ram+0x52
    movb $3, ram+0x53
    movb $4, ram+0x54
    movb $5, ram+0x55
    movb $6, ram+0x56
    movb $7, ram+0x57
    movb $8, ram+0x58
    movb $9, ram+0x59
    movb $10, ram+0x60

    
    lea ram+0x51, %eax
    movb $0, %al
    movb $1, %bl
    movb $1, %cl

    loop1:
    mov (%eax), %al
    add %al, %bl
    inc %eax
    inc %cl
    cmp $11, %cl
    jle loop1

    mov %bl, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits
