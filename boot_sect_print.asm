; a boot sector that prints a message to screen with BIOS's interrupt

mov ah, 0x0e

mov al, 'P'
int 0x10
mov al, 'H'
int 0x10
mov al, 'I'
int 0x10
mov al, 'L'
int 0x10
mov al, 'O'
int 0x10
mov al, 'S'
int 0x10
mov al, 'O'
int 0x10
mov al, 'P'
int 0x10
mov al, 'H'
int 0x10
mov al, 'I'
int 0x10
mov al, 'A'
int 0x10

jmp $ ; jump to the current address
times 510-($-$$) db 0 ; pad 510 zeroes in the boot sector
dw 0xaa55 ; magic number at last two bytes
