mov ah, 0x0e
mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
int 0x10
mov al, 'o'
int 0x10

; Infinite loop (e9 fd ff)
loop:
	jmp loop

; Fill with 510 zeroes - size of code
times 510-($-$$) db 0

; Bootsector magic number
dw 0xaa55
